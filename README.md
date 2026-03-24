# CS50 SQL Teaching Repo

ეს repo არის სასწავლოდ აწყობილი, რომ შენც და სხვებმაც მარტივად იმუშაოთ SQL-ზე GitHub Codespaces-ში ან ლოკალურად SQLite-ით.

## რა დევს შიგნით

- `schema.sql` — ცხრილების შექმნა
- `seed.sql` — სატესტო მონაცემები
- `setup.sql` — schema + data ერთად
- `exercises.sql` — სავარჯიშოები
- `solutions.sql` — პასუხები
- `.devcontainer/devcontainer.json` — Codespaces-ის კონფიგი
- `data/training.db` — მზა SQLite ბაზა

## როგორ გაუშვა GitHub Codespaces-ში

1. ატვირთე ეს ფაილები GitHub repository-ში.
2. დააჭირე `Code` → `Codespaces` → `Create codespace`.
3. როცა გარემო გაიხსნება, ტერმინალში დაწერე:

```bash
sqlite3 data/training.db
```

4. ცხრილები ნახე:

```sql
.tables
```

5. პირველი ტესტი:

```sql
SELECT * FROM employees;
```

## თუ გინდა ბაზის თავიდან შექმნა

```bash
sqlite3 data/training.db < setup.sql
```

ან ორ ნაბიჯად:

```bash
sqlite3 data/training.db < schema.sql
sqlite3 data/training.db < seed.sql
```

## სასწავლო სტრუქტურა

### Week 0 — basics
- SELECT
- WHERE
- ORDER BY
- LIMIT
- LIKE
- NULL

### Week 1 — relations
- foreign key
- JOIN

### Week 2 — aggregates
- COUNT
- AVG
- GROUP BY
- HAVING

### Week 3+ — subqueries
- overall average
- department average
- nested queries

## პრეზენტაციისთვის როგორ გამოიყენო

1. სლაიდზე აჩვენე query
2. Codespaces-ში გაუშვი live
3. აუდიტორიას დააწერინე იგივე
4. მერე exercises.sql-დან მიეცი დავალება

## მაგალითები

```sql
SELECT employee_name, salary
FROM employees
WHERE salary > 3000
ORDER BY salary DESC;
```

```sql
SELECT d.department_name, COUNT(*) AS employees_count
FROM employees e
JOIN departments d ON e.department_id = d.id
GROUP BY d.department_name;
```

## შენიშვნა

`solutions.sql` ჯობს თავიდან არ გაუხსნა სტუდენტებს.
