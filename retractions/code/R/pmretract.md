# PubMed retractions report
Neil Saunders  
compiled `r Sys.time()`  



## Introduction
This is the latest report on retracted publications in the [PubMed database](http://www.pubmed.org). It was generated on February 13 2017. This report replaces the application PMRetract, formerly hosted at [Heroku](https://www.heroku.com).

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
<div id = 'chart7415c045652' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart7415c045652",
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
[           1990,             39 ],
[           1991,             32 ],
[           1992,             29 ],
[           1993,             22 ],
[           1994,             39 ],
[           1995,             43 ],
[           1996,             43 ],
[           1997,             45 ],
[           1998,             69 ],
[           1999,             83 ],
[           2000,             97 ],
[           2001,            124 ],
[           2002,            128 ],
[           2003,            145 ],
[           2004,            187 ],
[           2005,            238 ],
[           2006,            275 ],
[           2007,            288 ],
[           2008,            308 ],
[           2009,            338 ],
[           2010,            354 ],
[           2011,            347 ],
[           2012,            358 ],
[           2013,            345 ],
[           2014,            389 ],
[           2015,            255 ],
[           2016,            114 ],
[           2017,              1 ] 
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
"id": "chart7415c045652",
"chart": {
 "renderTo": "chart7415c045652" 
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
<div id = 'chart741704a639b' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart741704a639b",
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
[           1998,             48 ],
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
[           2010,            290 ],
[           2011,            459 ],
[           2012,            469 ],
[           2013,            572 ],
[           2014,            513 ],
[           2015,            646 ],
[           2016,            710 ],
[           2017,             69 ] 
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
"id": "chart741704a639b",
"chart": {
 "renderTo": "chart741704a639b" 
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
<div id = 'chart74152a07f14' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart74152a07f14",
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
[           1990,            203 ],
[           1991,            235 ],
[           1992,            264 ],
[           1993,            286 ],
[           1994,            325 ],
[           1995,            368 ],
[           1996,            411 ],
[           1997,            456 ],
[           1998,            525 ],
[           1999,            608 ],
[           2000,            705 ],
[           2001,            829 ],
[           2002,            957 ],
[           2003,           1102 ],
[           2004,           1289 ],
[           2005,           1527 ],
[           2006,           1802 ],
[           2007,           2090 ],
[           2008,           2398 ],
[           2009,           2736 ],
[           2010,           3090 ],
[           2011,           3437 ],
[           2012,           3795 ],
[           2013,           4140 ],
[           2014,           4529 ],
[           2015,           4784 ],
[           2016,           4898 ],
[           2017,           4899 ] 
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
"id": "chart74152a07f14",
"chart": {
 "renderTo": "chart74152a07f14" 
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
<div id = 'chart7412b788417' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart7412b788417",
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
[           1998,            292 ],
[           1999,            320 ],
[           2000,            343 ],
[           2001,            368 ],
[           2002,            417 ],
[           2003,            476 ],
[           2004,            538 ],
[           2005,            611 ],
[           2006,            742 ],
[           2007,            875 ],
[           2008,           1113 ],
[           2009,           1408 ],
[           2010,           1698 ],
[           2011,           2157 ],
[           2012,           2626 ],
[           2013,           3198 ],
[           2014,           3711 ],
[           2015,           4357 ],
[           2016,           5067 ],
[           2017,           5136 ] 
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
"id": "chart7412b788417",
"chart": {
 "renderTo": "chart7412b788417" 
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
<div id = 'chart7417f312f90' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart7417f312f90",
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
         3.635,
         2.327,
         3.324,
         3.428,
         7.069,
          9.68,
         7.905,
         7.087,
         5.274,
         9.132,
         9.827,
         9.609,
         11.56,
        16.106,
        18.585,
        19.713,
        23.248,
        21.406,
        24.066,
        30.077,
        34.998,
        39.433,
        39.672,
        40.241,
         39.48,
        33.327,
        36.461,
        37.635,
        33.535,
        35.445,
        22.953,
         9.703,
         0.705 
],
"type": "column",
"events": {
 "click":  function() {window.open(this.options.url)}  
} 
} 
],
"xAxis": [
 {
 "categories": [ 1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017 ],
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
"id": "chart7417f312f90",
"chart": {
 "renderTo": "chart7417f312f90" 
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
<div id = 'chart741352f6d4f' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart741352f6d4f",
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
         2.493,
         1.318,
         3.029,
         4.716,
         4.693,
          6.11,
         4.315,
         4.215,
         4.571,
         3.352,
         7.707,
        11.204,
          6.27,
         4.674,
         4.687,
         8.194,
         9.792,
         9.972,
        10.735,
        18.784,
        18.321,
        31.095,
        34.457,
        27.302,
        48.229,
        49.304,
          55.6,
        46.743,
        58.148,
        60.432,
        48.661 
],
"type": "column",
"events": {
 "click":  function() {window.open(this.options.url)}  
} 
} 
],
"xAxis": [
 {
 "categories": [ 1966, 1967, 1968, 1969, 1970, 1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017 ],
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
"id": "chart741352f6d4f",
"chart": {
 "renderTo": "chart741352f6d4f" 
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
<div id = 'chart7415e4d9f92' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart7415e4d9f92",
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
"renderTo": "chart7415e4d9f92" 
},
"series": [
 {
 "data": [
 186,
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
33,
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
 "categories": [ "J. Biol. Chem.", "Proc. Natl. Acad. Sci. U.S.A.", "Science", "Nature", "Anesth. Analg.", "PLoS ONE", "J. Immunol.", "Can J Anaesth", "Blood", "Tumour Biol.", "Cell", "Obstet Gynecol", "J. Clin. Invest.", "Diagn Pathol", "Mol. Biol. Rep.", "Biochem. Biophys. Res. Commun.", "Eur J Anaesthesiol", "J. Neurosci.", "Mol. Cell. Biol.", "Br J Anaesth" ],
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
"id": "chart7415e4d9f92" 
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
<div id = 'chart7416dadd597' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart7416dadd597",
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
"renderTo": "chart7416dadd597" 
},
"series": [
 {
 "data": [
 187,
87,
71,
67,
56,
56,
47,
40,
38,
35,
34,
33,
33,
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
 "categories": [ "J. Biol. Chem.", "Proc. Natl. Acad. Sci. U.S.A.", "Science", "Nature", "Anesth. Analg.", "PLoS ONE", "J. Immunol.", "Can J Anaesth", "Tumour Biol.", "Biochem. Biophys. Res. Commun.", "Mol. Biol. Rep.", "Cell", "Diagn Pathol", "Blood", "Eur J Anaesthesiol", "J. Am. Chem. Soc.", "J. Clin. Invest.", "J. Neurosci.", "EMBO J.", "Cancer Res." ],
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
"id": "chart7416dadd597" 
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
<div id = 'chart74165ac43d3' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart74165ac43d3",
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
"renderTo": "chart74165ac43d3" 
},
"series": [
 {
 "data": [
       2077.748,
      1192.504,
       958.977,
       717.875,
       619.124,
       577.403,
       569.692,
       520.764,
       499.517,
        402.01,
       307.134,
       277.754,
       273.411,
        270.27,
       266.667,
       258.866,
       246.245,
       191.972,
       187.874,
       178.518 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "Diagn Pathol", "Immunopharmacol Immunotoxicol", "Eur. J. Med. Res.", "Iran Red Crescent Med J", "Eur J Anaesthesiol", "Tumour Biol.", "Mol. Cells", "Can J Anaesth", "Mol. Biol. Rep.", "J Anesth", "Genet. Mol. Res.", "Anesth. Analg.", "Phytother Res", "Nat. Prod. Res.", "J Pers Soc Psychol", "Nat. Cell Biol.", "Eur Rev Med Pharmacol Sci", "J. Cardiothorac. Vasc. Anesth.", "Mol. Endocrinol.", "Mol. Cell" ],
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
"id": "chart74165ac43d3" 
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
<div id = 'chart7412e4b5af0' class = 'rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "chart7412e4b5af0",
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
"renderTo": "chart7412e4b5af0" 
},
"series": [
 {
 "data": [
       2211.796,
       958.977,
       664.985,
       593.009,
       547.857,
       534.117,
       301.949,
       296.195,
       283.333,
       270.869,
         245.7,
       239.296,
       204.953,
       178.518,
       167.528,
       164.061,
       163.214,
       162.514,
       145.414,
       143.937 
],
"type": "bar" 
} 
],
"xAxis": [
 {
 "categories": [ "Diagn Pathol", "Eur. J. Med. Res.", "Eur J Anaesthesiol", "Tumour Biol.", "Mol. Biol. Rep.", "Can J Anaesth", "Cancer Sci.", "Phytother Res", "J Pers Soc Psychol", "Eur Rev Med Pharmacol Sci", "Nat. Prod. Res.", "Anesth. Analg.", "Mol. Endocrinol.", "Mol. Cell", "Genet. Mol. Res.", "FASEB J.", "Acta Anaesthesiol Scand", "ScientificWorldJournal", "Int. J. Syst. Evol. Microbiol.", "Arterioscler. Thromb. Vasc. Biol." ],
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
"id": "chart7412e4b5af0" 
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
