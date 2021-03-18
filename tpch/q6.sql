select
  sum(L_EXTENDEDPRICE * L_DISCOUNT) as revenue
from
  lineitem
where
  L_SHIPDATE >= '1994-01-01'
  and L_SHIPDATE < '1995-01-01'
  and L_DISCOUNT between toDecimal32(0.05, 2) and toDecimal32(0.07, 2)
  and L_QUANTITY < 24