# PubMed retractions report
Neil Saunders  
compiled `r Sys.time()`  



## Introduction
This is the latest report on retracted publications in the [PubMed database](http://www.pubmed.org). It was generated on May 29 2016. This report replaces the application PMRetract, formerly hosted at [Heroku](https://www.heroku.com).

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
<div id = 'chart6e121667571' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e121667571",
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
[           1973,              1 ],
[           1975,              5 ],
[           1976,              3 ],
[           1977,              1 ],
[           1978,              8 ],
[           1979,              7 ],
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
[           1998,             67 ],
[           1999,             82 ],
[           2000,             94 ],
[           2001,            124 ],
[           2002,            124 ],
[           2003,            141 ],
[           2004,            188 ],
[           2005,            230 ],
[           2006,            267 ],
[           2007,            282 ],
[           2008,            294 ],
[           2009,            319 ],
[           2010,            326 ],
[           2011,            302 ],
[           2012,            308 ],
[           2013,            287 ],
[           2014,            311 ],
[           2015,            132 ],
[           2016,             12 ] 
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
"id": "chart6e121667571",
"chart": {
 "renderTo": "chart6e121667571" 
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
<div id = 'chart6e168eadebc' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e168eadebc",
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
[           1977,              3 ],
[           1980,              6 ],
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
[           2003,             60 ],
[           2004,             64 ],
[           2005,             73 ],
[           2006,            138 ],
[           2007,            141 ],
[           2008,            241 ],
[           2009,            300 ],
[           2010,            288 ],
[           2011,            454 ],
[           2012,            473 ],
[           2013,            587 ],
[           2014,            516 ],
[           2015,            637 ],
[           2016,            202 ] 
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
"id": "chart6e168eadebc",
"chart": {
 "renderTo": "chart6e168eadebc" 
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
<div id = 'chart6e14467d1e1' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e14467d1e1",
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
[           1973,              2 ],
[           1975,              7 ],
[           1976,             10 ],
[           1977,             11 ],
[           1978,             19 ],
[           1979,             26 ],
[           1980,             38 ],
[           1981,             54 ],
[           1982,             60 ],
[           1983,             73 ],
[           1984,             86 ],
[           1985,             98 ],
[           1986,            106 ],
[           1987,            118 ],
[           1988,            131 ],
[           1989,            159 ],
[           1990,            197 ],
[           1991,            229 ],
[           1992,            258 ],
[           1993,            280 ],
[           1994,            319 ],
[           1995,            362 ],
[           1996,            405 ],
[           1997,            450 ],
[           1998,            517 ],
[           1999,            599 ],
[           2000,            693 ],
[           2001,            817 ],
[           2002,            941 ],
[           2003,           1082 ],
[           2004,           1270 ],
[           2005,           1500 ],
[           2006,           1767 ],
[           2007,           2049 ],
[           2008,           2343 ],
[           2009,           2662 ],
[           2010,           2988 ],
[           2011,           3290 ],
[           2012,           3598 ],
[           2013,           3885 ],
[           2014,           4196 ],
[           2015,           4328 ],
[           2016,           4340 ] 
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
"id": "chart6e14467d1e1",
"chart": {
 "renderTo": "chart6e14467d1e1" 
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
<div id = 'chart6e1765f061f' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e1765f061f",
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
[           1977,              4 ],
[           1980,             10 ],
[           1981,             12 ],
[           1982,             16 ],
[           1983,             25 ],
[           1984,             32 ],
[           1985,             43 ],
[           1986,             48 ],
[           1987,             57 ],
[           1988,             62 ],
[           1989,             74 ],
[           1990,             93 ],
[           1991,            112 ],
[           1992,            137 ],
[           1993,            155 ],
[           1994,            173 ],
[           1995,            193 ],
[           1996,            208 ],
[           1997,            238 ],
[           1998,            285 ],
[           1999,            313 ],
[           2000,            336 ],
[           2001,            361 ],
[           2002,            410 ],
[           2003,            470 ],
[           2004,            534 ],
[           2005,            607 ],
[           2006,            745 ],
[           2007,            886 ],
[           2008,           1127 ],
[           2009,           1427 ],
[           2010,           1715 ],
[           2011,           2169 ],
[           2012,           2642 ],
[           2013,           3229 ],
[           2014,           3745 ],
[           2015,           4382 ],
[           2016,           4584 ] 
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
"id": "chart6e1765f061f",
"chart": {
 "renderTo": "chart6e1765f061f" 
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
<div id = 'chart6e18432492' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e18432492",
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
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
         0.437,
             0,
         2.032,
         1.189,
         0.387,
         2.978,
         2.518,
         4.349,
         5.754,
         2.071,
         4.276,
         4.152,
         3.635,
         2.327,
         3.324,
         3.427,
         7.068,
         9.432,
         7.905,
         7.088,
         5.276,
         9.131,
         9.828,
         9.609,
        11.562,
         15.64,
        18.361,
        19.101,
        23.245,
        20.735,
        23.402,
        30.241,
        33.821,
        38.285,
        38.843,
        38.404,
        37.257,
        30.685,
        31.708,
        32.358,
         27.88,
        28.303,
        11.867,
         2.453 
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
"id": "chart6e18432492",
"chart": {
 "renderTo": "chart6e18432492" 
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
<div id = 'chart6e130a0ba13' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e130a0ba13",
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
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
             0,
          1.16,
             0,
             0,
         2.174,
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
         4.694,
          6.11,
         4.317,
         4.214,
         4.571,
         3.352,
         7.708,
        10.971,
          6.27,
         4.674,
         4.687,
         8.194,
         9.958,
        10.295,
        10.735,
        19.788,
        19.421,
        31.481,
        35.038,
        27.109,
        47.667,
        49.692,
        57.024,
         46.96,
        57.266,
        41.284 
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
"id": "chart6e130a0ba13",
"chart": {
 "renderTo": "chart6e130a0ba13" 
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
<div id = 'chart6e17d95d11d' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e17d95d11d",
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
"renderTo": "chart6e17d95d11d" 
},
"series": [
 {
 "data": [
 128,
89,
83,
64,
64,
48,
46,
39,
39,
33,
32,
31,
29,
27,
27,
24,
23,
23,
23,
22 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "J. Biol. Chem.", "Proc. Natl. Acad. Sci. U.S.A.", "Science", "Anesth. Analg.", "Nature", "J. Immunol.", "PLoS ONE", "Blood", "Can J Anaesth", "Obstet Gynecol", "J. Clin. Invest.", "Cell", "Mol. Biol. Rep.", "Biochem. Biophys. Res. Commun.", "Eur J Anaesthesiol", "Mol. Cell. Biol.", "Br J Anaesth", "EMBO J.", "J. Neurosci.", "J. Am. Chem. Soc." ],
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
"id": "chart6e17d95d11d" 
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
<div id = 'chart6e15a2d58be' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e15a2d58be",
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
"renderTo": "chart6e15a2d58be" 
},
"series": [
 {
 "data": [
 125,
86,
70,
63,
55,
49,
48,
40,
32,
32,
31,
31,
29,
26,
25,
23,
23,
23,
22,
22 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "J. Biol. Chem.", "Proc. Natl. Acad. Sci. U.S.A.", "Science", "Nature", "Anesth. Analg.", "PLoS ONE", "J. Immunol.", "Can J Anaesth", "Blood", "Mol. Biol. Rep.", "Biochem. Biophys. Res. Commun.", "Cell", "Eur J Anaesthesiol", "J. Am. Chem. Soc.", "J. Clin. Invest.", "J. Neurosci.", "Mol. Cell. Biol.", "Obstet Gynecol", "EMBO J.", "Tumour Biol." ],
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
"id": "chart6e15a2d58be" 
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
<div id = 'chart6e15c054a37' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e15c054a37",
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
"renderTo": "chart6e15c054a37" 
},
"series": [
 {
 "data": [
        1220.93,
       918.422,
       633.952,
       584.567,
       539.867,
       473.315,
       384.615,
       349.301,
       280.965,
       278.843,
       270.636,
       268.025,
       204.804,
       172.414,
        165.31,
       144.543,
       131.451,
       131.392,
       129.186,
       127.758 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "Immunopharmacol Immunotoxicol", "Eur. J. Med. Res.", "Eur J Anaesthesiol", "Mol. Cells", "Can J Anaesth", "Mol. Biol. Rep.", "J Anesth", "Tumour Biol.", "Phytother Res", "Anesth. Analg.", "J Pers Soc Psychol", "Nat. Prod. Res.", "J. Cardiothorac. Vasc. Anesth.", "Mol. Cell", "Acta Anaesthesiol Scand", "Int. J. Syst. Evol. Microbiol.", "Br J Anaesth", "ScientificWorldJournal", "FASEB J.", "Obstet Gynecol" ],
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
"id": "chart6e15c054a37" 
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
<div id = 'chart6e159e00045' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart6e159e00045",
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
"renderTo": "chart6e159e00045" 
},
"series": [
 {
 "data": [
       1145.475,
       918.422,
       680.911,
        553.71,
       522.278,
       365.935,
       304.378,
       289.687,
       287.551,
       239.631,
       172.414,
       171.497,
        165.31,
       156.589,
       149.061,
       135.535,
       131.392,
       125.786,
       117.177,
       114.302 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "Nephrol. Ther.", "Eur. J. Med. Res.", "Eur J Anaesthesiol", "Can J Anaesth", "Mol. Biol. Rep.", "Tumour Biol.", "Phytother Res", "Cancer Sci.", "J Pers Soc Psychol", "Anesth. Analg.", "Mol. Cell", "Mol. Endocrinol.", "Acta Anaesthesiol Scand", "Int. J. Syst. Evol. Microbiol.", "FASEB J.", "Arterioscler. Thromb. Vasc. Biol.", "ScientificWorldJournal", "Nat. Med.", "EMBO J.", "J. Hazard. Mater." ],
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
"id": "chart6e159e00045" 
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
