

---

# Problem 48 — Highest Manufacturers by Number of Models (With Ties)

## Problem (Plain English)

Which manufacturer(s) have the **largest number of models**?
There may be **more than one** manufacturer if they tie.

---

## Required Logic (3 Steps Only)

1. Count how many models each make has
2. Find the **highest** of those counts
3. Return **all** makes that have that highest count

---

## Step 1 — Count Models per Make

```sql
SELECT MakeID, COUNT(*) AS TotalNumberOfModels
FROM MakeModels
GROUP BY MakeID;
```

Example result:

| MakeID | TotalNumberOfModels |
| ------ | ------------------- |
| 1      | 5                   |
| 2      | 8                   |
| 3      | 8                   |
| 4      | 3                   |

Meaning:

* Make 2 and Make 3 both have the highest number (8)

---

## Step 2 — Find the Highest Number

```sql
SELECT MAX(TotalNumberOfModels)
FROM (
  SELECT MakeID, COUNT(*) AS TotalNumberOfModels
  FROM MakeModels
  GROUP BY MakeID
) t;
```

Result:

```
8
```

At this step:

* SQL only knows the number **8**
* It does NOT care which make has it

---

## Step 3 — Return Makes Matching That Number

```sql
SELECT Make, COUNT(*) AS HighestModels
FROM Makes
JOIN MakeModels ON Makes.MakeID = MakeModels.MakeID
GROUP BY Make
HAVING COUNT(*) = 8;
```

Result:

| Make   | HighestModels |
| ------ | ------------- |
| Toyota | 8             |
| Ford   | 8             |

Both are returned → **ties handled correctly**

---

## Why HAVING Is Used

* `COUNT(*)` is an aggregate
* Aggregates cannot be filtered using `WHERE`
* `HAVING` filters grouped results

Rule:

```
WHERE  → filters rows
HAVING → filters groups
```

---

## Key Rule to Remember

```
Highest + possible ties
→ find MAX value
→ return everything equal to it
```

---

## Mental Model (Very Important)

SQL is doing ONLY this:

1. Count
2. Find max
3. Keep equals

Nothing more.


