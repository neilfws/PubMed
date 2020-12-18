A Retracted Publication Citation Network
================
Neil Saunders
2020-12-18 20:39:17

  - [1 Introduction](#introduction)
  - [2 The dataset](#the-dataset)
  - [3 Analysis](#analysis)
  - [4 Convert to a graph](#convert-to-a-graph)
  - [5 Graph analysis](#graph-analysis)
      - [5.1 Components and Groups](#components-and-groups)
      - [5.2 A subgraph of only retracted
        articles](#a-subgraph-of-only-retracted-articles)
      - [5.3 Gephi Visualisation](#gephi-visualisation)
          - [5.3.1 Connected subgraph](#connected-subgraph)
          - [5.3.2 Retracted-only PMIDs
            subgraph](#retracted-only-pmids-subgraph)

# 1 Introduction

This report has 4 aims:

  - obtain the identifiers for all retracted publications in PubMed
  - obtain the identifiers for all articles in PubMed that cite those
    retracted publications
  - generate citation networks based on these datasets
  - explore the networks with some basic analysis

# 2 The dataset

We search PubMed using the `rentrez` package. Knowing that there are
currently around 8700 retracted articles, we can set `retmax` to a
suitably-high number. Or run an initial search, then use the value of
`es$count` in a second search. This creates a data frame with PMID
(article identifiers) in one column.

``` r
library(rentrez)

es <- entrez_search("pubmed", "Retracted Publication[PTYP]", retmax = 10000)
articles <- data.frame(pmid = es$ids)
```

We use `entrez_link` to find citations in PubMed for the given PMID.
Multiple citation PMIDs can be stored in each row of a list column in
the data frame.

The `get_cites` function took around 2.5 hours to run, but completed
successfully.

The final step is to `unlist` the `cites` column, generating each pair
of article PMID and citing article PMID, per row. For articles without
citations, `get_cites` returns NULL and so only PMIDS with one or more
citations are retained. This is what we want.

``` r
get_cites <- function(id) {
  el <- entrez_link(dbfrom = "pubmed", id = id, db = "pubmed")
  el$links$pubmed_pubmed_citedin
}

articles$cites <- sapply(articles$pmid, get_cites)

articles_df <- articles %>% 
  unnest(cites)
```

Each pair of article PMID and citing article PMID looks like this.

``` r
dataset %>% 
  head(10) %>% 
  kable() %>% 
  kable_styling(bootstrap_options = c("striped", "condensed"))
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:right;">

pmid

</th>

<th style="text-align:right;">

cites

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:right;">

32873781

</td>

<td style="text-align:right;">

33262330

</td>

</tr>

<tr>

<td style="text-align:right;">

32696949

</td>

<td style="text-align:right;">

33006362

</td>

</tr>

<tr>

<td style="text-align:right;">

32683951

</td>

<td style="text-align:right;">

32873282

</td>

</tr>

<tr>

<td style="text-align:right;">

32668870

</td>

<td style="text-align:right;">

33281107

</td>

</tr>

<tr>

<td style="text-align:right;">

32649709

</td>

<td style="text-align:right;">

33048995

</td>

</tr>

<tr>

<td style="text-align:right;">

32646999

</td>

<td style="text-align:right;">

32760174

</td>

</tr>

<tr>

<td style="text-align:right;">

32646999

</td>

<td style="text-align:right;">

32666253

</td>

</tr>

<tr>

<td style="text-align:right;">

32623526

</td>

<td style="text-align:right;">

33141364

</td>

</tr>

<tr>

<td style="text-align:right;">

32598092

</td>

<td style="text-align:right;">

32875064

</td>

</tr>

<tr>

<td style="text-align:right;">

32581016

</td>

<td style="text-align:right;">

33281107

</td>

</tr>

</tbody>

</table>

# 3 Analysis

We can count `pmid` to find the top 10 most-cited retracted articles.

Then we can retrieve the XML summary for those articles using
`entrez_fetch` and parse the XML for the article titles.

``` r
top10 <- dataset %>% 
  count(pmid, sort = TRUE) %>% 
  head(10)

x <- entrez_fetch("pubmed", top10$pmid, rettype  = "xml")
titles <- read_xml(x) %>% 
  xml_find_all("//ArticleTitle") %>% 
  xml_text()

top10 %>% 
  bind_cols(title = titles) %>% 
  kable() %>% 
  kable_styling(bootstrap_options = c("striped", "condensed"))
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:right;">

pmid

</th>

<th style="text-align:right;">

n

</th>

<th style="text-align:left;">

title

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:right;">

23432189

</td>

<td style="text-align:right;">

1081

</td>

<td style="text-align:left;">

Primary prevention of cardiovascular disease with a Mediterranean diet.

</td>

</tr>

<tr>

<td style="text-align:right;">

12609035

</td>

<td style="text-align:right;">

681

</td>

<td style="text-align:left;">

An enhanced transient expression system in plants based on suppression
of gene silencing by the p19 protein of tomato bushy stunt virus.

</td>

</tr>

<tr>

<td style="text-align:right;">

16642001

</td>

<td style="text-align:right;">

598

</td>

<td style="text-align:left;">

Lysyl oxidase is essential for hypoxia-induced metastasis.

</td>

</tr>

<tr>

<td style="text-align:right;">

22088800

</td>

<td style="text-align:right;">

563

</td>

<td style="text-align:left;">

Cardiac stem cells in patients with ischaemic cardiomyopathy (SCIPIO):
initial results of a randomised phase 1 trial.

</td>

</tr>

<tr>

<td style="text-align:right;">

24711954

</td>

<td style="text-align:right;">

475

</td>

<td style="text-align:left;">

A comprehensive review on metabolic syndrome.

</td>

</tr>

<tr>

<td style="text-align:right;">

15604363

</td>

<td style="text-align:right;">

419

</td>

<td style="text-align:left;">

Visfatin: a protein secreted by visceral fat that mimics the effects of
insulin.

</td>

</tr>

<tr>

<td style="text-align:right;">

19524507

</td>

<td style="text-align:right;">

415

</td>

<td style="text-align:left;">

A pleiotropically acting microRNA, miR-31, inhibits breast cancer
metastasis.

</td>

</tr>

<tr>

<td style="text-align:right;">

21753854

</td>

<td style="text-align:right;">

366

</td>

<td style="text-align:left;">

Selective killing of cancer cells by a small molecule targeting the
stress response to ROS.

</td>

</tr>

<tr>

<td style="text-align:right;">

15222900

</td>

<td style="text-align:right;">

351

</td>

<td style="text-align:left;">

TREEFINDER: a powerful graphical analysis environment for molecular
phylogenetics.

</td>

</tr>

<tr>

<td style="text-align:right;">

9500320

</td>

<td style="text-align:right;">

339

</td>

<td style="text-align:left;">

Ileal-lymphoid-nodular hyperplasia, non-specific colitis, and pervasive
developmental disorder in children.

</td>

</tr>

</tbody>

</table>

# 4 Convert to a graph

Now we bring out the `igraph` package. `graph.data.frame` converts the
dataset to a graph. Then we can add additional attributes to the
vertices.

We’ll write out the graph as graphml to use later in Gephi.

``` r
dataset_graph <- graph.data.frame(dataset)

V(dataset_graph)$label <- V(dataset_graph)$name
V(dataset_graph)$retracted <- ifelse(V(dataset_graph)$name %in% dataset$pmid, 1, 0)

write.graph(dataset_graph, file = "../../data/retracted_pmids_citations.graphml", format = "graphml")
```

# 5 Graph analysis

## 5.1 Components and Groups

`components` finds the connected components of the graph. `groups`
identifies the vertices in each component.

We can use `sapply` and `length` to find the top 10 largest components,
*i.e.* the most-connected articles.

``` r
dataset_components <- components(dataset_graph)
dataset_groups <- groups(dataset_components)

top10 <- sapply(dataset_groups, length) %>% 
  sort(decreasing = TRUE) %>% 
  head(10)

top10
```

    ##    26     4  2459  1288  1692  1902  2937  1204   882  1305 
    ## 55444   585   567   224   195   195   191   150   144   132

So the largest connected group still contains 55444 vertices of the
original 84992.

We can create a subgraph of just those articles from the largest
connected group, and write it out for later use.

``` r
dataset_subgraph <- subgraph(dataset_graph, which(V(dataset_graph)$name %in% dataset_groups[[26]]))

write.graph(dataset_subgraph, "../../data/retracted_pmids_subgraph.graphml", format = "graphml")
```

## 5.2 A subgraph of only retracted articles

We can create another subgraph containing **only** retracted articles -
*i.e.* one in which the citing articles were also retracted.

``` r
dataset_onlyretracted_subgraph <- subgraph(dataset_graph, V(dataset_graph)[retracted == 1])

write.graph(dataset_onlyretracted_subgraph, "../../data/onlyretracted_pmids_subgraph.graphml", format = "graphml")
```

As before, we can find the connected components in this graph.

``` r
dataset_onlyretracted_components <- components(dataset_onlyretracted_subgraph)
dataset_onlyretracted_groups <- groups(dataset_onlyretracted_components)

top10 <- sapply(dataset_onlyretracted_groups, length) %>% 
  sort(decreasing = TRUE) %>% 
  head(10)

top10
```

    ##  350  155 1957 3145  921 1314 2083 2410  509 2460 
    ##   55   36   31   29   26   19   19   17   14   14

And as before, retrieve the XML and article titles for groups of
interest. Let’s start with the largest group. We’ll just look at the top
20 out of 55.

``` r
x <- entrez_fetch("pubmed", dataset_onlyretracted_groups[[names(top10)[1]]], rettype  = "xml")
titles <- read_xml(x) %>% 
  xml_find_all("//ArticleTitle") %>% 
  xml_text()

data.frame(pmid = dataset_onlyretracted_groups[[names(top10)[1]]],
           title = titles) %>% 
  head(20) %>% 
  kable() %>% 
  kable_styling(bootstrap_options = c("striped", "condensed"))
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

pmid

</th>

<th style="text-align:left;">

title

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

30233176

</td>

<td style="text-align:left;">

Synthesis and characterization of a novel peptide-grafted Cs and
evaluation of its nanoparticles for the oral delivery of insulin, in
vitro, and in vivo study.

</td>

</tr>

<tr>

<td style="text-align:left;">

26586942

</td>

<td style="text-align:left;">

PLGA-encapsulated tea polyphenols enhance the chemotherapeutic efficacy
of cisplatin against human cancer cells and mice bearing Ehrlich ascites
carcinoma.

</td>

</tr>

<tr>

<td style="text-align:left;">

26164001

</td>

<td style="text-align:left;">

SUMO-specific protease 6 promotes gastric cancer cell growth via
deSUMOylation of FoxM1.

</td>

</tr>

<tr>

<td style="text-align:left;">

26032092

</td>

<td style="text-align:left;">

Curcumin inhibits growth of prostate carcinoma via miR-208-mediated
CDKN1A activation.

</td>

</tr>

<tr>

<td style="text-align:left;">

25792385

</td>

<td style="text-align:left;">

Curcumin enhances the radiosensitivity of U87 cells by inducing DUSP-2
up-regulation.

</td>

</tr>

<tr>

<td style="text-align:left;">

23399702

</td>

<td style="text-align:left;">

RETRACTED: Tea polyphenols enhance cisplatin chemosensitivity in
cervical cancer cells via induction of apoptosis.

</td>

</tr>

<tr>

<td style="text-align:left;">

23349727

</td>

<td style="text-align:left;">

The different role of Notch1 and Notch2 in astrocytic gliomas.

</td>

</tr>

<tr>

<td style="text-align:left;">

22806240

</td>

<td style="text-align:left;">

Activated K-Ras and INK4a/Arf deficiency promote aggressiveness of
pancreatic cancer by induction of EMT consistent with cancer stem cell
phenotype.

</td>

</tr>

<tr>

<td style="text-align:left;">

22363731

</td>

<td style="text-align:left;">

3,3’-Diindolylmethane exhibits antileukemic activity in vitro and in
vivo through a Akt-dependent process.

</td>

</tr>

<tr>

<td style="text-align:left;">

22261338

</td>

<td style="text-align:left;">

RETRACTED: Increased Ras GTPase activity is regulated by miRNAs that can
be attenuated by CDF treatment in pancreatic cancer cells.

</td>

</tr>

<tr>

<td style="text-align:left;">

22213426

</td>

<td style="text-align:left;">

Inactivation of Ink4a/Arf leads to deregulated expression of miRNAs in
K-Ras transgenic mouse model of pancreatic cancer.

</td>

</tr>

<tr>

<td style="text-align:left;">

21673986

</td>

<td style="text-align:left;">

Activated K-ras and INK4a/Arf deficiency cooperate during the
development of pancreatic cancer by activation of Notch and NF-κB
signaling pathways.

</td>

</tr>

<tr>

<td style="text-align:left;">

21503965

</td>

<td style="text-align:left;">

Over-expression of FoxM1 leads to epithelial-mesenchymal transition and
cancer stem cell phenotype in pancreatic cancer cells.

</td>

</tr>

<tr>

<td style="text-align:left;">

21463919

</td>

<td style="text-align:left;">

Notch-1 induces epithelial-mesenchymal transition consistent with cancer
stem cell phenotype in pancreatic cancer cells.

</td>

</tr>

<tr>

<td style="text-align:left;">

21408027

</td>

<td style="text-align:left;">

Anti-tumor activity of a novel compound-CDF is mediated by regulating
miR-21, miR-200, and PTEN in pancreatic cancer.

</td>

</tr>

<tr>

<td style="text-align:left;">

20824697

</td>

<td style="text-align:left;">

Restoring sensitivity to oxaliplatin by a novel approach in
gemcitabine-resistant pancreatic cancer cells in vitro and in vivo.

</td>

</tr>

<tr>

<td style="text-align:left;">

20658545

</td>

<td style="text-align:left;">

Down-regulation of Notch-1 is associated with Akt and FoxM1 in inducing
cell growth inhibition and apoptosis in prostate cancer cells.

</td>

</tr>

<tr>

<td style="text-align:left;">

20599780

</td>

<td style="text-align:left;">

Cyclodextrin-complexed curcumin exhibits anti-inflammatory and
antiproliferative activities superior to those of curcumin through
higher cellular uptake.

</td>

</tr>

<tr>

<td style="text-align:left;">

20388782

</td>

<td style="text-align:left;">

Gemcitabine sensitivity can be induced in pancreatic cancer cells
through modulation of miR-200 and miR-21 expression by curcumin or its
analogue CDF.

</td>

</tr>

<tr>

<td style="text-align:left;">

20379844

</td>

<td style="text-align:left;">

Platelet-derived growth factor-D contributes to aggressiveness of breast
cancer cells by up-regulating Notch and NF-κB signaling pathways.

</td>

</tr>

</tbody>

</table>

Clearly a network of cancer-related articles. How about at the other end
of the top 10?

``` r
x <- entrez_fetch("pubmed", dataset_onlyretracted_groups[[names(top10)[10]]], rettype  = "xml")
titles <- read_xml(x) %>% 
  xml_find_all("//ArticleTitle") %>% 
  xml_text()

data.frame(pmid = dataset_onlyretracted_groups[[names(top10)[10]]],
           title = titles) %>% 
  kable() %>% 
  kable_styling(bootstrap_options = c("striped", "condensed"))
```

<table class="table table-striped table-condensed" style="margin-left: auto; margin-right: auto;">

<thead>

<tr>

<th style="text-align:left;">

pmid

</th>

<th style="text-align:left;">

title

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

23173109

</td>

<td style="text-align:left;">

Strategy for prevention of hip fractures in patients with Parkinson’s
disease.

</td>

</tr>

<tr>

<td style="text-align:left;">

22372723

</td>

<td style="text-align:left;">

Efficacy of antiresorptive agents for preventing fractures in Japanese
patients with an increased fracture risk: review of the literature.

</td>

</tr>

<tr>

<td style="text-align:left;">

21825080

</td>

<td style="text-align:left;">

Once-weekly risedronate for prevention of hip fracture in women with
Parkinson’s disease: a randomised controlled trial.

</td>

</tr>

<tr>

<td style="text-align:left;">

21050796

</td>

<td style="text-align:left;">

Amelioration of osteoporosis and hypovitaminosis D by sunlight exposure
in Parkinson’s disease.

</td>

</tr>

<tr>

<td style="text-align:left;">

19499964

</td>

<td style="text-align:left;">

Efficacy of menatetrenone (vitamin K2) against non-vertebral and hip
fractures in patients with neurological diseases: meta-analysis of three
randomized, controlled trials.

</td>

</tr>

<tr>

<td style="text-align:left;">

18384711

</td>

<td style="text-align:left;">

Efficacy of risedronate against hip fracture in patients with
neurological diseases: a meta-analysis of randomized controlled trials.

</td>

</tr>

<tr>

<td style="text-align:left;">

18306478

</td>

<td style="text-align:left;">

Comparison of effects of alendronate and raloxifene on lumbar bone
mineral density, bone turnover, and lipid metabolism in elderly women
with osteoporosis.

</td>

</tr>

<tr>

<td style="text-align:left;">

17372126

</td>

<td style="text-align:left;">

Risedronate and ergocalciferol prevent hip fracture in elderly men with
Parkinson disease.

</td>

</tr>

<tr>

<td style="text-align:left;">

16538619

</td>

<td style="text-align:left;">

Alendronate and vitamin D2 for prevention of hip fracture in Parkinson’s
disease: a randomized controlled trial.

</td>

</tr>

<tr>

<td style="text-align:left;">

16087822

</td>

<td style="text-align:left;">

Risedronate sodium therapy for prevention of hip fracture in men 65
years or older after stroke.

</td>

</tr>

<tr>

<td style="text-align:left;">

16087821

</td>

<td style="text-align:left;">

The prevention of hip fracture with risedronate and ergocalciferol plus
calcium supplementation in elderly women with Alzheimer disease: a
randomized controlled trial.

</td>

</tr>

<tr>

<td style="text-align:left;">

15664003

</td>

<td style="text-align:left;">

RETRACTED: Menatetrenone and vitamin D2 with calcium supplements prevent
nonvertebral fracture in elderly women with Alzheimer’s disease.

</td>

</tr>

<tr>

<td style="text-align:left;">

12913194

</td>

<td style="text-align:left;">

Amelioration of osteoporosis and hypovitaminosis D by sunlight exposure
in stroke patients.

</td>

</tr>

<tr>

<td style="text-align:left;">

12110423

</td>

<td style="text-align:left;">

Amelioration of osteoporosis by menatetrenone in elderly female
Parkinson’s disease patients with vitamin D deficiency.

</td>

</tr>

</tbody>

</table>

Something has gone awry in the world of aging bones.

## 5.3 Gephi Visualisation

In summary: nice pictures, but not many insights.

We load the graphml files into Gephi for manipulation and visualisation.
The OpenOrd layout was found to be fastest, and effective in arranging
the graphs.

### 5.3.1 Connected subgraph

First, the largest connected subgraph. Vertices are coloured by
modularity class.

Not sure we can conclude much from this, other than that there are
several highly-connected areas of the graph which presumably relate to
articles about a particular topic.

![](https://github.com/neilfws/PubMed/raw/master/retractions/data/retracted_pmids_subgraph.png) We can zoom into the graph,
with some difficulty as it is large. This shows just how connected a
retracted articles can be. PMID 19524507 is an article titled [A
pleiotropically acting microRNA, miR-31, inhibits breast cancer
metastasis](https://pubmed.ncbi.nlm.nih.gov/19524507/). This article
[was retracted](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4414313/)
due to concerns regarding statistical analysis and data presentation.

![](https://github.com/neilfws/PubMed/raw/master/retractions/data/retracted_pmids_subgraph_cropped.png)

### 5.3.2 Retracted-only PMIDs subgraph

We turn now to the subgraph containing only retracted articles and
retracted citing articles. This is clearly less connected and easier to
read.

Vertices are again coloured by modularity class, and vertex size
reflects “authority” - a measure of informational importance.

![](https://github.com/neilfws/PubMed/raw/master/retractions/data/onlyretracted_pmids_subgraph.png)

Zooming in allows inspection of connected articles.

The large vertex PMID 22851539 is the article [Tracking chromatid
segregation to identify human cardiac stem cells that regenerate
extensively the infarcted
myocardium](https://pubmed.ncbi.nlm.nih.gov/22851539/). It was retracted
for [somewhat mysterious
reasons](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6375757/) related
to a figure (2E) in the article.

![](https://github.com/neilfws/PubMed/raw/master/retractions/data/onlyretracted_pmids_subgraph_cropped.png)
