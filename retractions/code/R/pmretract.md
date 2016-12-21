# PubMed retractions report
Neil Saunders  
compiled `r Sys.time()`  



## Introduction
This is the latest report on retracted publications in the [PubMed database](http://www.pubmed.org). It was generated on December 22 2016. This report replaces the application PMRetract, formerly hosted at [Heroku](https://www.heroku.com).

Each section contains two charts. The first (blue) contains data about _retracted publications_. The second (orange) contains data about _retraction notices_. The PubMed search terms for these are, respectively:

* "retracted publication"[PTYP]
* "retraction of publication"[PTYP]

## 1. Timeline of retractions
This chart shows the number of retracted publications per year. PubMed uses a variety of different dates; the year used here is the date that the record was created (CRDT).

Clicking on a year will open a new window at PubMed showing the retracted articles for that year.



### 1.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart9306342f70e' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart9306342f70e",
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
[           1985,             12 ],
[           1986,              8 ],
[           1987,             12 ],
[           1988,             13 ],
[           1989,             28 ],
[           1990,             38 ],
[           1991,             32 ],
[           1992,             29 ],
[           1993,             22 ],
[           1994,             39 ],
[           1995,             43 ],
[           1996,             43 ],
[           1997,             45 ],
[           1998,             68 ],
[           1999,             83 ],
[           2000,             95 ],
[           2001,            123 ],
[           2002,            128 ],
[           2003,            144 ],
[           2004,            187 ],
[           2005,            234 ],
[           2006,            266 ],
[           2007,            284 ],
[           2008,            303 ],
[           2009,            333 ],
[           2010,            345 ],
[           2011,            340 ],
[           2012,            347 ],
[           2013,            332 ],
[           2014,            369 ],
[           2015,            237 ],
[           2016,             78 ] 
],
"type": "column" 
} 
],
"xAxis": [
 {
 "type": "linear",
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retracted publication%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart9306342f70e",
"chart": {
 "renderTo": "chart9306342f70e" 
} 
});
        });
    })(jQuery);
</script>

### 1.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart93010c640ba' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart93010c640ba",
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
[           1987,              9 ],
[           1988,              5 ],
[           1989,             12 ],
[           1990,             19 ],
[           1991,             19 ],
[           1992,             25 ],
[           1993,             18 ],
[           1994,             18 ],
[           1995,             20 ],
[           1996,             15 ],
[           1997,             30 ],
[           1998,             47 ],
[           1999,             28 ],
[           2000,             23 ],
[           2001,             25 ],
[           2002,             49 ],
[           2003,             59 ],
[           2004,             62 ],
[           2005,             73 ],
[           2006,            131 ],
[           2007,            133 ],
[           2008,            238 ],
[           2009,            295 ],
[           2010,            291 ],
[           2011,            462 ],
[           2012,            469 ],
[           2013,            574 ],
[           2014,            515 ],
[           2015,            647 ],
[           2016,            620 ] 
],
"type": "column" 
} 
],
"xAxis": [
 {
 "type": "linear",
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retraction of publication%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart93010c640ba",
"chart": {
 "renderTo": "chart93010c640ba" 
} 
});
        });
    })(jQuery);
</script>

## 2. Cumulative timeline of retractions
This chart shows the cumulative sum of retracted publications per year. The year used here is the date that the record was created (CRDT).

Clicking on a year will open a new window at PubMed showing the retracted articles from 1959 up to and including that year.



### 2.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart9307d2c984c' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart9307d2c984c",
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
[           1985,            103 ],
[           1986,            111 ],
[           1987,            123 ],
[           1988,            136 ],
[           1989,            164 ],
[           1990,            202 ],
[           1991,            234 ],
[           1992,            263 ],
[           1993,            285 ],
[           1994,            324 ],
[           1995,            367 ],
[           1996,            410 ],
[           1997,            455 ],
[           1998,            523 ],
[           1999,            606 ],
[           2000,            701 ],
[           2001,            824 ],
[           2002,            952 ],
[           2003,           1096 ],
[           2004,           1283 ],
[           2005,           1517 ],
[           2006,           1783 ],
[           2007,           2067 ],
[           2008,           2370 ],
[           2009,           2703 ],
[           2010,           3048 ],
[           2011,           3388 ],
[           2012,           3735 ],
[           2013,           4067 ],
[           2014,           4436 ],
[           2015,           4673 ],
[           2016,           4751 ] 
],
"type": "column" 
} 
],
"xAxis": [
 {
 "type": "linear",
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retracted publication%22[PTYP] AND 1959:' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart9307d2c984c",
"chart": {
 "renderTo": "chart9307d2c984c" 
} 
});
        });
    })(jQuery);
</script>

### 2.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart930117baac8' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart930117baac8",
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
[           1987,             63 ],
[           1988,             68 ],
[           1989,             80 ],
[           1990,             99 ],
[           1991,            118 ],
[           1992,            143 ],
[           1993,            161 ],
[           1994,            179 ],
[           1995,            199 ],
[           1996,            214 ],
[           1997,            244 ],
[           1998,            291 ],
[           1999,            319 ],
[           2000,            342 ],
[           2001,            367 ],
[           2002,            416 ],
[           2003,            475 ],
[           2004,            537 ],
[           2005,            610 ],
[           2006,            741 ],
[           2007,            874 ],
[           2008,           1112 ],
[           2009,           1407 ],
[           2010,           1698 ],
[           2011,           2160 ],
[           2012,           2629 ],
[           2013,           3203 ],
[           2014,           3718 ],
[           2015,           4365 ],
[           2016,           4985 ] 
],
"type": "column" 
} 
],
"xAxis": [
 {
 "type": "linear",
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retraction of publication%22[PTYP] AND 1959:' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart930117baac8",
"chart": {
 "renderTo": "chart930117baac8" 
} 
});
        });
    })(jQuery);
</script>

## 3. Retraction rate by year
This chart shows the rate of retracted publications per year, as retractions per 100 000 publications. The year used here is the date that the record was created (CRDT).

Clicking on a year will open a new window at PubMed showing the retracted articles for that year.



### 3.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart930abffa08' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart930abffa08",
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
         2.031,
         1.189,
         0.387,
         2.977,
         2.877,
         4.348,
         5.753,
         2.071,
         4.276,
         4.152,
         3.635,
         2.327,
         3.324,
         3.427,
         7.068,
         9.431,
         7.904,
         7.087,
         5.274,
         9.126,
         9.818,
         9.592,
        11.548,
        15.853,
         18.57,
        19.291,
        23.037,
        21.395,
        23.894,
        30.064,
        34.375,
        38.107,
        39.098,
        39.576,
        38.874,
        32.457,
        35.691,
        36.445,
        32.252,
        33.582,
        21.316,
         6.567 
],
"type": "column",
"events": {
 "click":  function() {window.open(this.options.url)}  
} 
} 
],
"xAxis": [
 {
 "categories": [ 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016 ],
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retracted publication%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart930abffa08",
"chart": {
 "renderTo": "chart930abffa08" 
} 
});
        });
    })(jQuery);
</script>

### 3.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart930217a2eb2' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart930217a2eb2",
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
          0.563,
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
         2.536,
         0.719,
         1.381,
         2.961,
         2.236,
         3.332,
         1.454,
         2.493,
         1.318,
         3.029,
         4.716,
         4.693,
         6.109,
         4.315,
         4.212,
         4.566,
         3.346,
         7.699,
        10.957,
         6.265,
          4.67,
         4.682,
          8.19,
          9.79,
         9.968,
        10.724,
        18.767,
         18.31,
        31.086,
        34.438,
        27.377,
        48.498,
        49.258,
        55.761,
        46.869,
        58.192,
          52.2 
],
"type": "column",
"events": {
 "click":  function() {window.open(this.options.url)}  
} 
} 
],
"xAxis": [
 {
 "categories": [ 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016 ],
"labels": {
 "rotation":             90,
"formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retraction of publication%22[PTYP] AND ' + escape(this.value) + '[CRDT]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart930217a2eb2",
"chart": {
 "renderTo": "chart930217a2eb2" 
} 
});
        });
    })(jQuery);
</script>

## 4. Retractions by journal (absolute numbers)
This chart shows the top 20 journals by number of retracted articles. See section 5 for journals ranked by retractions relative to total articles.

Clicking on a journal name will open a new window at PubMed showing the retracted articles from that journal.



### 4.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart930327ad9cb' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart930327ad9cb",
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
"renderTo": "chart930327ad9cb" 
},
"series": [
 {
 "data": [
 171,
91,
86,
68,
65,
54,
47,
39,
38,
37,
33,
32,
32,
31,
31,
27,
27,
24,
24,
23 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "J. Biol. Chem.", "Proc. Natl. Acad. Sci. U.S.A.", "Science", "Nature", "Anesth. Analg.", "PLoS ONE", "J. Immunol.", "Can J Anaesth", "Blood", "Tumour Biol.", "Obstet Gynecol", "Cell", "J. Clin. Invest.", "Diagn Pathol", "Mol. Biol. Rep.", "Biochem. Biophys. Res. Commun.", "Eur J Anaesthesiol", "J. Neurosci.", "Mol. Cell. Biol.", "Br J Anaesth" ],
"labels": {
 "formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retracted publication%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart930327ad9cb" 
});
        });
    })(jQuery);
</script>

### 4.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart9302154ddf7' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart9302154ddf7",
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
"renderTo": "chart9302154ddf7" 
},
"series": [
 {
 "data": [
 172,
87,
71,
67,
56,
56,
47,
40,
38,
34,
34,
33,
32,
31,
29,
26,
25,
24,
23,
22 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "J. Biol. Chem.", "Proc. Natl. Acad. Sci. U.S.A.", "Science", "Nature", "Anesth. Analg.", "PLoS ONE", "J. Immunol.", "Can J Anaesth", "Tumour Biol.", "Biochem. Biophys. Res. Commun.", "Mol. Biol. Rep.", "Diagn Pathol", "Cell", "Blood", "Eur J Anaesthesiol", "J. Am. Chem. Soc.", "J. Clin. Invest.", "J. Neurosci.", "EMBO J.", "Cancer Res." ],
"labels": {
 "formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retraction of publication%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart9302154ddf7" 
});
        });
    })(jQuery);
</script>

## 5. Retractions by journal (normalised)
This chart ranks the top 20 retractions by journal. For each journal, retractions (or retraction notices) per 100 000 publications from that journal are shown.

Clicking on a journal name will open a new window at PubMed showing the retracted articles from that journal.



### 5.1 Retracted Publications
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart9302ad29530' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart9302ad29530",
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
"renderTo": "chart9302ad29530" 
},
"series": [
 {
 "data": [
       2100.271,
      1199.315,
       961.025,
       740.741,
       623.413,
       577.584,
       572.519,
       520.833,
       499.758,
       405.132,
       310.515,
        278.97,
       276.104,
        275.04,
       267.335,
       252.334,
       193.867,
       187.521,
       164.893,
       163.646 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "Diagn Pathol", "Immunopharmacol Immunotoxicol", "Eur. J. Med. Res.", "Iran Red Crescent Med J", "Eur J Anaesthesiol", "Tumour Biol.", "Mol. Cells", "Can J Anaesth", "Mol. Biol. Rep.", "J Anesth", "Genet. Mol. Res.", "Anesth. Analg.", "Nat. Prod. Res.", "Phytother Res", "J Pers Soc Psychol", "Eur Rev Med Pharmacol Sci", "J. Cardiothorac. Vasc. Anesth.", "Mol. Endocrinol.", "Mol. Cell", "Acta Anaesthesiol Scand" ],
"labels": {
 "formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retracted publication%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart9302ad29530" 
});
        });
    })(jQuery);
</script>

### 5.2 Retraction Notices
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/jquery-1.9.1.min.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/highcharts-more.js></script>
<script type='text/javascript' src=/Library/Frameworks/R.framework/Versions/3.3/Resources/library/rCharts/libraries/highcharts/js/exporting.js></script> 
 <style>
  .rChart {
    display: block;
    margin-left: auto; 
    margin-right: auto;
    width: 800px;
    height: 400px;
  }  
  </style>
<div id = 'chart93041cd509f' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart93041cd509f",
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
"renderTo": "chart93041cd509f" 
},
"series": [
 {
 "data": [
       2235.772,
       961.025,
       669.591,
       593.194,
       548.122,
       534.188,
       306.748,
        297.96,
       284.043,
       277.567,
       251.004,
       240.343,
       204.569,
       169.372,
       164.893,
       163.646,
       162.778,
       146.843,
       146.085,
       144.875 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "Diagn Pathol", "Eur. J. Med. Res.", "Eur J Anaesthesiol", "Tumour Biol.", "Mol. Biol. Rep.", "Can J Anaesth", "Cancer Sci.", "Phytother Res", "J Pers Soc Psychol", "Eur Rev Med Pharmacol Sci", "Nat. Prod. Res.", "Anesth. Analg.", "Mol. Endocrinol.", "Genet. Mol. Res.", "Mol. Cell", "Acta Anaesthesiol Scand", "ScientificWorldJournal", "Int. J. Syst. Evol. Microbiol.", "FASEB J.", "Arterioscler. Thromb. Vasc. Biol." ],
"labels": {
 "formatter":  function() { return '<a href=\"http://www.pubmed.org/?term=%22retraction of  publication%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } ,
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
"id": "chart93041cd509f" 
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
    hc$xAxis(type = "linear", labels = list(rotation = 90, formatter = paste("#! function() { return '<a href=\"http://www.pubmed.org/?term=%22", 
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
    hc$xAxis(type = "linear", labels = list(rotation = 90, formatter = paste("#! function() { return '<a href=\"http://www.pubmed.org/?term=%22", 
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
    hc$xAxis(categories = ydf$year, labels = list(rotation = 90, formatter = paste("#! function() { return '<a href=\"http://www.pubmed.org/?term=%22", 
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
    hc$xAxis(categories = j20$journal, labels = list(formatter = paste("#! function() { return '<a href=\"http://www.pubmed.org/?term=%22", 
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
    hc$xAxis(categories = d$journal, labels = list(formatter = paste("#! function() { return '<a href=\"http://www.pubmed.org/?term=%22", 
        term, "%22[PTYP] AND %22' + escape(this.value) + '%22[JOUR]\" target=\"_blank\">' + this.value + '</a>'; } !#", 
        sep = ""), useHTML = "true"))
    hc$yAxis(title = list(text = "retracted publications / 100 000 publications"))
    hc$legend(enabled = FALSE)
    hc$tooltip(pointFormat = "{point.y} retractions / 100 000 publications")
    return(hc)
}
```
