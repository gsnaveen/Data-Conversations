Freeze/copy Base data
split processing into steps
layer the steps for consistency 

Step 1 bring in the base data (multiple sources)
Step 2 align grain of the data
Step 3 Join related entities
Step 4 Create one big flat table
Step 5 Create summary entities
Step 6 Analyze the numeric Summary
Step 7 find corelations
Step 8 Attribute summary, 
          distint #Of Values 
          #Of null rows 
          #Of Value rows
          Sample Values

Summary:
	# of layers for each dataset
	List of Join related entities,big flat table
	# of layers for the analytics datasets


Cautions:
  cartesian joins
  one to many relationships
  Nulls
  conversions/ casting
  
Analysis:
  flags Yes, No
  YYNN
  Buckets
          compare unique valuee across columns
          compare across columns
          comapre across rows


Presto SQL:
, ARRAY[sales1] || ARRAY[sales2] || ARRAY[sales3] || array[sales4] ArrayValues
, cardinality(ARRAY[sales1] || ARRAY[sales2] || ARRAY[sales3] || array[sales4]) ArrayValuesLength
,concat(case when sales1 > 0 then 'Y' else 'N' end , 
		case when sales2 > 0 then 'Y' else 'N' end ,
		case when sales3 > 0 then 'Y' else 'N' end ,
		case when sales4 > 0 then 'Y' else 'N' end
) sales_Flag

Excel Ffunctions:
=COUNTIF(C5:C215,"YES")
=SUMIF(C5:C215,"YES")

COUNTIFS, SUMIFS

Xlookup

https://careerfoundry.com/en/blog/data-analytics/data-analysis-in-excel/
https://www.goskills.com/Excel/Resources/Most-useful-Excel-functions-for-data-analysis
