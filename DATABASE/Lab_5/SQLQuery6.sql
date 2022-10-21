select top (1)
(select avg (PROGRESS.NOTE) from PROGRESS
	where PROGRESS.SUBJECT like 'нюХо'),

(select avg (PROGRESS.NOTE) from PROGRESS
	where PROGRESS.SUBJECT like 'ад'),
(select avg (PROGRESS.NOTE) from PROGRESS
	where PROGRESS.SUBJECT like 'ясад')
	from PROGRESS


