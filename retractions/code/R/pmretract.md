---
title: "PubMed retractions report"
author: "Neil Saunders"
date: "compiled 2018-05-07 20:45:46"
output:
  html_document:
    highlight: pygments
    keep_md: yes
    theme: cerulean
    toc: yes
---



## Introduction
This is the latest report on retracted publications in the [PubMed database](http://www.pubmed.gov). It was generated on May 07 2018. This report replaces the application PMRetract, formerly hosted at [Heroku](https://www.heroku.com).

Each section contains two charts. The first (blue) contains data about _retracted publications_. The second (orange) contains data about _retraction notices_. The PubMed search terms for these are, respectively:

* "retracted publication"[PTYP]
* "retraction of publication"[PTYP]

## 1. Timeline of retractions
This chart shows the number of retracted publications per year. PubMed uses a variety of different dates; the year used here is the date that the record was created (CRDT).

Clicking on a year will open a new window at PubMed showing the retracted articles for that year.



### 1.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa466c618b0' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa466c618b0",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": "Retracted publications by year of Entrez record creation" 
},
"yAxis": [
 {
 "title": {
 "text": "retracted publications" 
} 
} 
],
"series": [
 {
 "data": [
 [           1959,              1 ],
[           1963,              1 ],
[           1968,              1 ],
[           1973,              3 ],
[           1975,              5 ],
[           1976,              3 ],
[           1977,              1 ],
[           1978,              8 ],
[           1979,              8 ],
[           1980,             12 ],
[           1981,             16 ],
[           1982,              6 ],
[           1983,             13 ],
[           1984,             13 ],
[           1985,             13 ],
[           1986,              9 ],
[           1987,             12 ],
[           1988,             14 ],
[           1989,             28 ],
[           1990,             39 ],
[           1991,             33 ],
[           1992,             29 ],
[           1993,             22 ],
[           1994,             40 ],
[           1995,             43 ],
[           1996,             43 ],
[           1997,             46 ],
[           1998,             69 ],
[           1999,             87 ],
[           2000,            100 ],
[           2001,            130 ],
[           2002,            134 ],
[           2003,            149 ],
[           2004,            198 ],
[           2005,            246 ],
[           2006,            288 ],
[           2007,            297 ],
[           2008,            328 ],
[           2009,            359 ],
[           2010,            380 ],
[           2011,            416 ],
[           2012,            427 ],
[           2013,            431 ],
[           2014,            526 ],
[           2015,            419 ],
[           2016,            269 ],
[           2017,            148 ],
[           2018,             13 ] 
],
"type": "column" 
} 
],
"xAxis": [
 {
 "type": "linear",
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retracted publication%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
},
"title": {
 "text": "year" 
},
"tickInterval":              1 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} records" 
},
"id": "chartfaa466c618b0",
"chart": {
 "renderTo": "chartfaa466c618b0" 
} 
});
        });
    })(jQuery);
</script>

### 1.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa452b9e34a' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa452b9e34a",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": "Retraction notices by year of Entrez record creation" 
},
"yAxis": [
 {
 "title": {
 "text": "retraction notices" 
} 
} 
],
"series": [
 {
 "data": [
 [           1966,              1 ],
[           1968,              1 ],
[           1970,              1 ],
[           1975,              3 ],
[           1977,              3 ],
[           1980,              7 ],
[           1981,              2 ],
[           1982,              4 ],
[           1983,              9 ],
[           1984,              7 ],
[           1985,             11 ],
[           1986,              5 ],
[           1987,             10 ],
[           1988,              5 ],
[           1989,             12 ],
[           1990,             19 ],
[           1991,             20 ],
[           1992,             25 ],
[           1993,             18 ],
[           1994,             18 ],
[           1995,             20 ],
[           1996,             15 ],
[           1997,             30 ],
[           1998,             48 ],
[           1999,             28 ],
[           2000,             23 ],
[           2001,             25 ],
[           2002,             49 ],
[           2003,             59 ],
[           2004,             62 ],
[           2005,             73 ],
[           2006,            134 ],
[           2007,            135 ],
[           2008,            240 ],
[           2009,            303 ],
[           2010,            298 ],
[           2011,            475 ],
[           2012,            482 ],
[           2013,            589 ],
[           2014,            522 ],
[           2015,            666 ],
[           2016,            796 ],
[           2017,            615 ],
[           2018,            201 ] 
],
"type": "column" 
} 
],
"xAxis": [
 {
 "type": "linear",
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retraction of publication%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
},
"title": {
 "text": "year" 
},
"tickInterval":              1 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} records" 
},
"plotOptions": {
 "series": {
 "color": "#FFA500" 
} 
},
"id": "chartfaa452b9e34a",
"chart": {
 "renderTo": "chartfaa452b9e34a" 
} 
});
        });
    })(jQuery);
</script>

## 2. Cumulative timeline of retractions
This chart shows the cumulative sum of retracted publications per year. The year used here is the date that the record was created (CRDT).

Clicking on a year will open a new window at PubMed showing the retracted articles from 1959 up to and including that year.



### 2.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa47caf81aa' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa47caf81aa",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": "Cumulative sum of retracted publications by year of Entrez record creation" 
},
"yAxis": [
 {
 "title": {
 "text": "sum of retracted publications" 
} 
} 
],
"series": [
 {
 "data": [
 [           1959,              1 ],
[           1963,              2 ],
[           1968,              3 ],
[           1973,              6 ],
[           1975,             11 ],
[           1976,             14 ],
[           1977,             15 ],
[           1978,             23 ],
[           1979,             31 ],
[           1980,             43 ],
[           1981,             59 ],
[           1982,             65 ],
[           1983,             78 ],
[           1984,             91 ],
[           1985,            104 ],
[           1986,            113 ],
[           1987,            125 ],
[           1988,            139 ],
[           1989,            167 ],
[           1990,            206 ],
[           1991,            239 ],
[           1992,            268 ],
[           1993,            290 ],
[           1994,            330 ],
[           1995,            373 ],
[           1996,            416 ],
[           1997,            462 ],
[           1998,            531 ],
[           1999,            618 ],
[           2000,            718 ],
[           2001,            848 ],
[           2002,            982 ],
[           2003,           1131 ],
[           2004,           1329 ],
[           2005,           1575 ],
[           2006,           1863 ],
[           2007,           2160 ],
[           2008,           2488 ],
[           2009,           2847 ],
[           2010,           3227 ],
[           2011,           3643 ],
[           2012,           4070 ],
[           2013,           4501 ],
[           2014,           5027 ],
[           2015,           5446 ],
[           2016,           5715 ],
[           2017,           5863 ],
[           2018,           5876 ] 
],
"type": "column" 
} 
],
"xAxis": [
 {
 "type": "linear",
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retracted publication%22[PTYP] AND 1959:' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
},
"title": {
 "text": "year" 
},
"tickInterval":              1 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} records since 1959" 
},
"id": "chartfaa47caf81aa",
"chart": {
 "renderTo": "chartfaa47caf81aa" 
} 
});
        });
    })(jQuery);
</script>

### 2.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa4391c3416' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa4391c3416",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": "Cumulative sum of retraction notices by year of Entrez record creation" 
},
"yAxis": [
 {
 "title": {
 "text": "sum of retraction notices" 
} 
} 
],
"series": [
 {
 "data": [
 [           1966,              1 ],
[           1968,              2 ],
[           1970,              3 ],
[           1975,              6 ],
[           1977,              9 ],
[           1980,             16 ],
[           1981,             18 ],
[           1982,             22 ],
[           1983,             31 ],
[           1984,             38 ],
[           1985,             49 ],
[           1986,             54 ],
[           1987,             64 ],
[           1988,             69 ],
[           1989,             81 ],
[           1990,            100 ],
[           1991,            120 ],
[           1992,            145 ],
[           1993,            163 ],
[           1994,            181 ],
[           1995,            201 ],
[           1996,            216 ],
[           1997,            246 ],
[           1998,            294 ],
[           1999,            322 ],
[           2000,            345 ],
[           2001,            370 ],
[           2002,            419 ],
[           2003,            478 ],
[           2004,            540 ],
[           2005,            613 ],
[           2006,            747 ],
[           2007,            882 ],
[           2008,           1122 ],
[           2009,           1425 ],
[           2010,           1723 ],
[           2011,           2198 ],
[           2012,           2680 ],
[           2013,           3269 ],
[           2014,           3791 ],
[           2015,           4457 ],
[           2016,           5253 ],
[           2017,           5868 ],
[           2018,           6069 ] 
],
"type": "column" 
} 
],
"xAxis": [
 {
 "type": "linear",
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retraction of publication%22[PTYP] AND 1959:' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
},
"title": {
 "text": "year" 
},
"tickInterval":              1 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} records since 1959" 
},
"plotOptions": {
 "series": {
 "color": "#FFA500" 
} 
},
"id": "chartfaa4391c3416",
"chart": {
 "renderTo": "chartfaa4391c3416" 
} 
});
        });
    })(jQuery);
</script>

## 3. Retraction rate by year
This chart shows the rate of retracted publications per year, as retractions per 100 000 publications. The year used here is the date that the record was created (CRDT).

Clicking on a year will open a new window at PubMed showing the retracted articles for that year.



### 3.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa42c80928' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa42c80928",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": "Retracted publications per 100 000 publications by year of Entrez record creation" 
},
"yAxis": [
 {
 "title": {
 "text": "retracted publications per 100 000 publications" 
} 
} 
],
"series": [
 {
 "data": [
           0.92,
             0,
             0,
             0,
         0.716,
             0,
             0,
             0,
             0,
         0.486,
             0,
             0,
             0,
             0,
         1.312,
             0,
         2.032,
         1.189,
         0.387,
         2.978,
         2.878,
         4.348,
         5.754,
         2.071,
         4.277,
         4.152,
         3.938,
         2.618,
         3.324,
         3.692,
         7.069,
         9.682,
         8.152,
         7.087,
         5.274,
         9.366,
         9.828,
         9.609,
        11.818,
        16.107,
        19.482,
        20.324,
        24.374,
         22.41,
         24.73,
        31.847,
        36.175,
        41.297,
        40.912,
        42.856,
        41.935,
        35.776,
        43.734,
        44.898,
         41.91,
        48.034,
        37.773,
        23.222,
        12.321,
         3.076 
],
"type": "column",
"events": {
 "click":  function() {window.open(this.options.url)}  
} 
} 
],
"xAxis": [
 {
 "categories": [ 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018 ],
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retracted publication%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
},
"title": {
 "text": "year" 
},
"tickInterval":              1 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} retracted records per 100 000 publication records" 
},
"id": "chartfaa42c80928",
"chart": {
 "renderTo": "chartfaa42c80928" 
} 
});
        });
    })(jQuery);
</script>

### 3.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa418315784' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa418315784",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": "Retraction notices per 100 000 publications by year of Entrez record creation" 
},
"yAxis": [
 {
 "title": {
 "text": "retraction notices per 100 000 publications" 
} 
} 
],
"series": [
 {
 "data": [
          0.564,
             0,
         0.486,
             0,
         0.461,
             0,
             0,
             0,
             0,
         1.219,
             0,
          1.16,
             0,
             0,
         2.537,
         0.719,
         1.381,
         2.961,
         2.236,
         3.332,
         1.455,
          2.77,
         1.318,
          3.03,
         4.717,
          4.94,
          6.11,
         4.315,
         4.215,
         4.571,
         3.352,
         7.707,
        11.205,
          6.27,
         4.675,
         4.687,
         8.195,
         9.792,
         9.972,
        10.735,
        19.214,
        18.597,
        31.358,
        35.394,
        28.056,
        49.936,
        50.681,
        57.273,
        47.668,
        60.041,
        68.716,
        51.197,
        47.565 
],
"type": "column",
"events": {
 "click":  function() {window.open(this.options.url)}  
} 
} 
],
"xAxis": [
 {
 "categories": [ 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018 ],
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retraction of publication%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
},
"title": {
 "text": "year" 
},
"tickInterval":              1 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} retraction notices per 100 000 publication records" 
},
"plotOptions": {
 "series": {
 "color": "#FFA500" 
} 
},
"id": "chartfaa418315784",
"chart": {
 "renderTo": "chartfaa418315784" 
} 
});
        });
    })(jQuery);
</script>

## 4. Retractions by journal (absolute numbers)
This chart shows the top 20 journals by number of retracted articles. See section 5 for journals ranked by retractions relative to total articles.

Clicking on a journal name will open a new window at PubMed showing the retracted articles from that journal.



### 4.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa44a4397bd' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa44a4397bd",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "title": {
 "text": "retracted publications" 
} 
} 
],
"chart": {
 "marginLeft":            220,
"renderTo": "chartfaa44a4397bd" 
},
"series": [
 {
 "data": [
 222,
145,
103,
90,
89,
70,
65,
50,
39,
39,
38,
38,
38,
36,
34,
33,
31,
30,
28,
26 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "J. Biol. Chem.", "Tumour Biol.", "Proc. Natl. Acad. Sci. U.S.A.", "PLoS ONE", "Science", "Nature", "Anesth. Analg.", "J. Immunol.", "Acta Crystallogr Sect E Struct Rep Online", "Can J Anaesth", "Blood", "J. Clin. Invest.", "Obstet Gynecol", "Cell", "Diagn Pathol", "Biochem. Biophys. Res. Commun.", "Mol. Biol. Rep.", "Mol. Cell. Biol.", "Eur J Anaesthesiol", "J. Am. Chem. Soc." ],
"labels": {
 "formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retracted publication%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
} 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} records" 
},
"id": "chartfaa44a4397bd" 
});
        });
    })(jQuery);
</script>

### 4.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa46bc56918' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa46bc56918",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "title": {
 "text": "retraction notices" 
} 
} 
],
"chart": {
 "marginLeft":            220,
"renderTo": "chartfaa46bc56918" 
},
"series": [
 {
 "data": [
 223,
99,
92,
74,
69,
56,
50,
49,
40,
39,
36,
36,
34,
31,
31,
30,
30,
28,
24,
24 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "J. Biol. Chem.", "Proc. Natl. Acad. Sci. U.S.A.", "PLoS ONE", "Science", "Nature", "Anesth. Analg.", "J. Immunol.", "Biochem. Biophys. Res. Commun.", "Can J Anaesth", "Tumour Biol.", "Cell", "Diagn Pathol", "Mol. Biol. Rep.", "Blood", "J. Clin. Invest.", "Eur J Anaesthesiol", "J. Am. Chem. Soc.", "Mol. Cell. Biol.", "Cancer Res.", "Diabetes" ],
"labels": {
 "formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retraction of publication%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
} 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} records" 
},
"plotOptions": {
 "series": {
 "color": "#FFA500" 
} 
},
"id": "chartfaa46bc56918" 
});
        });
    })(jQuery);
</script>

## 5. Retractions by journal (normalised)
This chart ranks the top 20 retractions by journal. For each journal, retractions (or retraction notices) per 100 000 publications from that journal are shown.

Clicking on a journal name will open a new window at PubMed showing the retracted articles from that journal.



### 5.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa46e88e9ee' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa46e88e9ee",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "title": {
 "text": "retracted publications / 100 000 publications" 
} 
} 
],
"chart": {
 "marginLeft":            220,
"renderTo": "chartfaa46e88e9ee" 
},
"series": [
 {
 "data": [
       4784.689,
      2138.365,
      2032.805,
      1145.038,
      1027.221,
       972.763,
       847.458,
       701.754,
        612.29,
       539.763,
       525.131,
       503.356,
       493.003,
       439.775,
       412.996,
        349.04,
       347.155,
       304.838,
       304.646,
       265.762 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "Open Biomed Eng J", "Diagn Pathol", "Tumour Biol.", "Immunopharmacol Immunotoxicol", "Eur. J. Med. Res.", "J Renin Angiotensin Aldosterone Syst", "J Orthop Surg Res", "Iran Red Crescent Med J", "Eur J Anaesthesiol", "Mol. Cells", "Onco Targets Ther", "Can J Anaesth", "Mol. Biol. Rep.", "Int J Clin Exp Med", "Mol. Neurobiol.", "J Anesth", "Eur Rev Med Pharmacol Sci", "Genet. Mol. Res.", "Int J Clin Exp Pathol", "Anesth. Analg." ],
"labels": {
 "formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retracted publication%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
} 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} retractions / 100 000 publications" 
},
"id": "chartfaa46e88e9ee" 
});
        });
    })(jQuery);
</script>

### 5.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.5/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chartfaa4f624219' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chartfaa4f624219",
"width":            800,
"height":            400,
"credits": {
 "href": null,
"text": null 
},
"exporting": {
 "enabled": false 
},
"title": {
 "text": null 
},
"yAxis": [
 {
 "title": {
 "text": "retraction notices / 100 000 publications" 
} 
} 
],
"chart": {
 "marginLeft":            220,
"renderTo": "chartfaa4f624219" 
},
"series": [
 {
 "data": [
       2264.151,
      1027.221,
       847.458,
       656.024,
       546.755,
       540.712,
       516.262,
       493.938,
       487.622,
       440.529,
       347.155,
       296.956,
       276.949,
       276.783,
       228.964,
       217.048,
       204.918,
       198.807,
        193.32,
       180.002 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "Diagn Pathol", "Eur. J. Med. Res.", "J Orthop Surg Res", "Eur J Anaesthesiol", "Tumour Biol.", "Mol. Biol. Rep.", "Can J Anaesth", "Toxicol Ind Health", "Onco Targets Ther", "Mol. Neurobiol.", "Eur Rev Med Pharmacol Sci", "Cancer Sci.", "Phytother Res", "J Pers Soc Psychol", "Anesth. Analg.", "Nat. Prod. Res.", "Mol. Endocrinol.", "Paediatr Anaesth", "ScientificWorldJournal", "FASEB J." ],
"labels": {
 "formatter":  function() { return '<a href=\"http://www.pubmed.gov/?term=%22retraction of  publication%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } ,
"useHTML": "true" 
} 
} 
],
"legend": {
 "enabled": false 
},
"tooltip": {
 "pointFormat": "{point.y} retraction notices / 100 000 publications" 
},
"plotOptions": {
 "series": {
 "color": "#FFA500" 
} 
},
"id": "chartfaa4f624219" 
});
        });
    })(jQuery);
</script>


## 6. Functions

### 6.1 Setup
This code loads required libraries and pre-saved data.


```r
library(rCharts)
library(rentrez)
library(XML)

setwd("../../data")
doc.retd <- xmlTreeParse("retracted.xml", useInternalNodes = TRUE)
doc.retOf <- xmlTreeParse("retractionOf.xml", useInternalNodes = TRUE)
years.total <- read.csv("years.csv")
jour.retd <- read.csv("journals_retracted.csv")
jour.retOf <- read.csv("journals_retractionOf.csv")
```

### 6.2 Timeline
This code generates the timeline chart.


```r
plotTimeline <- function(d, term) {
    dates <- xpathSApply(d, "//PubmedData/History/PubMedPubDate[@PubStatus='entrez']/Year", 
        xmlValue)
    df1 <- as.data.frame(table(dates), stringsAsFactors = FALSE)
    hc <- Highcharts$new()
    da <- list()
    for (i in 1:nrow(df1)) {
        da[i][1] <- as.numeric(df1$date[i])
        da[[i]][2] <- as.numeric(df1$Freq[i])
    }
    hc$title(text = "Retracted publications by year of Entrez record creation")
    hc$series(data = da, type = "column")
    hc$xAxis(type = "linear", labels = list(rotation = 90, formatter = paste("#! function() { return '<a href=\"http://www.pubmed.gov/?term=%22", 
        term, "%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } !#", 
        sep = ""), useHTML = "true"), title = list(text = "year"), tickInterval = 1)
    hc$yAxis(title = list(text = "retracted publications"))
    hc$legend(enabled = FALSE)
    hc$tooltip(pointFormat = "{point.y} records")
    return(hc)
}
```

### 6.3 Cumulative timeline
This code generates the cumulative timeline chart.


```r
plotCumSumTimeline <- function(d, term) {
    dates <- xpathSApply(d, "//PubmedData/History/PubMedPubDate[@PubStatus='entrez']/Year", 
        xmlValue)
    df1 <- as.data.frame(table(dates), stringsAsFactors = FALSE)
    hc <- Highcharts$new()
    da <- list()
    cs <- cumsum(df1$Freq)
    for (i in 1:nrow(df1)) {
        da[i][1] <- as.numeric(df1$date[i])
        da[[i]][2] <- cs[i]
    }
    hc$title(text = "Cumulative sum of retracted publications by year of Entrez record creation")
    hc$series(data = da, type = "column")
    hc$xAxis(type = "linear", labels = list(rotation = 90, formatter = paste("#! function() { return '<a href=\"http://www.pubmed.gov/?term=%22", 
        term, "%22[PTYP] AND 1959:' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } !#", 
        sep = ""), useHTML = "true"), title = list(text = "year"), tickInterval = 1)
    hc$yAxis(title = list(text = "sum of retracted publications"))
    hc$legend(enabled = FALSE)
    hc$tooltip(pointFormat = "{point.y} records since 1959")
    return(hc)
}
```

### 6.4 By year
This code generates the retraction rate by year chart.


```r
plotByYear <- function(d, total, term) {
    dates <- xpathSApply(d, "//PubmedData/History/PubMedPubDate[@PubStatus='entrez']/Year", 
        xmlValue)
    years <- as.numeric(dates)
    ydf <- data.frame(year = min(years):max(years), total = NA, retracted = NA)
    years.cnt <- as.data.frame(table(years), stringsAsFactors = FALSE)
    m <- match(ydf$year, years.cnt$years)
    ydf$retracted <- years.cnt[m, "Freq"]
    ydf$retracted <- ifelse(is.na(ydf$retracted), 0, ydf$retracted)
    m <- match(ydf$year, total$year)
    ydf$total <- total[m, "total"]
    hc <- Highcharts$new()
    hc$title(text = "Retracted publications per 100 000 publications by year of Entrez record creation")
    hc$series(data = as.numeric(sprintf("%.3f", (1e+05/ydf$total) * ydf$retracted)), 
        type = "column", events = list(click = "#! function() {window.open(this.options.url)} !#"))
    hc$xAxis(categories = ydf$year, labels = list(rotation = 90, formatter = paste("#! function() { return '<a href=\"http://www.pubmed.gov/?term=%22", 
        term, "%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } !#", 
        sep = ""), useHTML = "true"), title = list(text = "year"), tickInterval = 1)
    hc$yAxis(title = list(text = "retracted publications per 100 000 publications"))
    hc$legend(enabled = FALSE)
    hc$tooltip(pointFormat = "{point.y} retracted records per 100 000 publication records")
    return(hc)
}
```

### 6.5 By journal
This code generates the retractions by journal chart (absolute numbers).


```r
plotByJournal <- function(d, term) {
    journals <- xpathSApply(d, "//MedlineCitation/Article/Journal/ISOAbbreviation", 
        xmlValue)
    journals.cnt <- as.data.frame(table(journals), stringsAsFactors = FALSE)
    colnames(journals.cnt) <- c("journal", "count")
    j20 <- head(journals.cnt[order(journals.cnt$count, decreasing = TRUE), ], 
        20)
    hc <- Highcharts$new()
    hc$chart(marginLeft = 220)
    hc$series(data = j20$count, type = "bar")
    hc$xAxis(categories = j20$journal, labels = list(formatter = paste("#! function() { return '<a href=\"http://www.pubmed.gov/?term=%22", 
        term, "%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } !#", 
        sep = ""), useHTML = "true"))
    hc$yAxis(title = list(text = "retracted publications"))
    hc$legend(enabled = FALSE)
    hc$tooltip(pointFormat = "{point.y} records")
    return(hc)
}
```

### 6.6 By journal normalised
This code generates the retractions by journal chart (relative to total publications for each journal).

```r
plotByJournal <- function(d, term) {
    d$idx <- as.numeric(sprintf("%.3f", (1e+05/d$total) * d$count))
    d <- head(d[order(d$idx, decreasing = TRUE), ], 20)
    hc <- Highcharts$new()
    hc$chart(marginLeft = 220)
    hc$series(data = d$idx, type = "bar")
    hc$xAxis(categories = d$journal, labels = list(formatter = paste("#! function() { return '<a href=\"http://www.pubmed.gov/?term=%22", 
        term, "%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } !#", 
        sep = ""), useHTML = "true"))
    hc$yAxis(title = list(text = "retracted publications / 100 000 publications"))
    hc$legend(enabled = FALSE)
    hc$tooltip(pointFormat = "{point.y} retractions / 100 000 publications")
    return(hc)
}
```
