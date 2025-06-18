Freeze/copy Base data
split processing into steps
layer the steps for consistency 

Step 1 bring in the base data (multiple sources)
	cleanse data 
		upper case
		datatypes 
		Nulls / NA
		error values to make it consistent
		data rules / transformation at column level
		drived columns based on the base column
	
Step 2 align grain of the data
Step 3 Join related entities
Step 4 Create one big flat table
	apply transformations
	drived columns based on the base column
Step 5 Create summary entities
Step 6 Analyze the numeric Summary
Step 7 find corelations
Step 8 Attribute summary, 
          distint #Of Values 
          #Of null rows 
          #Of Value rows
          Sample Values
Step 9 Agree on Grain
Step 10 Grain Flat dimension (flags at the grain)
Step 11 Notes (comments on the transformations for backtracking)
Step 12 builtin backtracking/audit
Step 13  YTD ,MDT  these metrics are good for final status, if the status changes then e.g pending or WIP will be different for different execution.
	Document data decisions
	filter change or introduction

Summary:
	# of layers for each dataset
	List of Join related entities,big flat table
	# of layers for the analytics datasets


Cautions:
  cartesian joins
  one to many relationships
  Nulls means not present value
  conversions/ casting
  
Analysis:
  Pivots/crosstabs
  corelations
  flags Yes, No
  YYNN
  Rank
  clustering
  Buckets
          compare unique across columns
          compare across columns
          comapre across rows


Presto SQL:
, ARRAY[sales1] || ARRAY[sales2] || ARRAY[sales3] || array[sales4] ArrayValues
, cardinality(ARRAY[sales1] || ARRAY[sales2] || ARRAY[sales3] || array[sales4]) ArrayValuesLength
, cardinality(array_distinct(ARRAY[sales1] || ARRAY[sales2] || ARRAY[sales3] || array[sales4])) ArrayValuesLengthUnique
,concat(case when sales1 > 0 then 'Y' else 'N' end , 
		case when sales2 > 0 then 'Y' else 'N' end ,
		case when sales3 > 0 then 'Y' else 'N' end ,
		case when sales4 > 0 then 'Y' else 'N' end
) sales_Flag
	
Percentile
SELECT APPPROX_PERCENTILE(count, 0.5) FROM ( SELECT COUNT(*) AS count, narrative_id FROM A_join_B GROUP BY B_id ) as counts;
https://stackoverflow.com/questions/48761066/presto-equivalent-for-redshifts-percentile-disc

Bucketing :
	select map_from_entries(array[('sales_num',sales_num),('opportunity_num',opportunity_num)]) 
	,map_from_entries(array[('gt100',case when sales_num > 100 then 'YES' else 'NO' end ),('gt20', case when sales_num > 20 then 'YES' else 'NO' end )]) 
	from entity 
	
Excel Ffunctions:
=COUNTIF(C5:C215,"YES")

SUMIF,COUNTIFS, SUMIFS , MAXIFS

Xlookup

https://careerfoundry.com/en/blog/data-analytics/data-analysis-in-excel/
https://www.goskills.com/Excel/Resources/Most-useful-Excel-functions-for-data-analysis
