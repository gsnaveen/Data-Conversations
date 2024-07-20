# Follow the data
## How to design a pipeline for debugging

1. Carry original and transformed attributes
2. Split data processing into domain/function area
3. Sub domains for processing e.g. opportunity, quotes, territory , products 
4. Carry the filter attributes
5. Carry the step transformed data
6. Carry the flags used
7. Have source column when multiple sources
8. Have Notes column for any transformations
9. Split complexity into multiple steps _step1/2/3/4
10. Apply one transformation in one place in the pipeline
11. Carry all attributes till -1 _rpt , in details table
12. Pick what is useful from [adhoc analysis](/adhocAnalysisRequest.sql)
