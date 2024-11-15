-- Optimized Rewritten SQL Query
-- There are no obvious inefficiencies in the original query. The use of LIKE and wildcard '%' at both ends prevents any gain from using indexes directly on the Email column. However, it’s a straightforward query without any unnecessary joins or subqueries, which would not benefit further from optimizations given the existing schema and constraints.
SELECT COUNT(*) FROM Customer WHERE Email LIKE '%gmail.com%'
