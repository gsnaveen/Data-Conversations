# Follow the data
## How to design a pipeline for debugging

1. Carry original and transformed attributes
2. Split data processing into domain/function area
3. Sub domains for processing e.g. opportunity, quotes, territory , products
4. Independent functions for sub domains / special processing. It helps in parallel developments and debugging.
5. Carry the filter attributes
6. Carry the step transformed data
7. Carry the flags used
8. Have source column when multiple sources
9. Have Notes column for any transformations
10. Split complexity into multiple steps _step1/2/3/4
11. Apply one transformation in one place in the pipeline
12. Carry all attributes till -1 _rpt , in details table
13. Pick what is useful from [adhoc analysis](/adhocAnalysisRequest.sql)
