@def title = "The MIMIC-III Database Demo"
@def hascode = true
@def date = Date(2020, 7, 16)
@def rss = "BIDSS: MIMIC-III Database Demo"

@def tags = ["unix"]

# 4.3 The MIMIC-III Database Demo

\toc

## Documentation
* MIMIC-III Demo: ~~~ <a href="https://physionet.org/content/mimiciii-demo/1.4/" target="_blank">Database information and data download</a> ~~~

## Analyzing the MIMIC-III Database Demo

### Getting Started

1. Download the following files
  * ~~~ <a href="https://physionet.org/content/mimiciii-demo/1.4/PATIENTS.csv" target="_blank">Admissions.csv</a> ~~~
  * ~~~ <a href="https://physionet.org/content/mimiciii-demo/1.4/ADMISSIONS.csv" target="_blank">Patients.csv</a> ~~~
  * ~~~ <a href="https://physionet.org/content/mimiciii-demo/1.4/DIAGNOSES_ICD.csv" target="_blank">Diagnoses_ICD.csv</a> ~~~
2. Move files to a working directory (see [3.1 Getting Started](/programming/unix/intro) for more detail)
3. Open a Unix shell and navigate to that directory (see [3.1 Getting Started](/programming/unix/intro) for more detail)

### Explore the Data Files

Confirm that your data files are in your present working directory:

```
$ ls -1
ADMISSIONS.csv
DIAGNOSES_ICD.csv
PATIENTS.csv
```

Count number of lines in file (PATIENTS.csv) using wc: 

```
$ wc PATIENTS.csv
     101     448    8605 PATIENTS.csv
$ wc -l PATIENTS.csv
     101 PATIENTS.csv
```

Look at contents of a text file (PATIENTS.csv) to fill a screen using more or less:
(Use spacebar or up and down arrows to scroll through pages and then press q to quit)

```
$ more PATIENTS.csv
$ less PATIENTS.csv
```

Look at first and last lines of a text file (PATIENTS.csv) to fill a screen using head or tail:

```
$ head PATIENTS.csv
$ tail PATIENTS.csv
```

Look at first line and last three lines of a text file (ADMISSIONS.csv) using head or tail:

```
$ head -n 1 ADMISSIONS.csv
row_id,subject_id,gender,dob,dod,dod_hosp,dod_ssn,expire_flag
$ tail -n 3 ADMISSIONS.csv
41087,44212,163189,2123-11-24 14:14:00,2123-12-30 14:31:00,,EMERGENCY,TRANSFER FROM HOSP/EXTRAM,REHAB/DISTINCT PART HOSP,Medicare,ENGL,UNOBTAINABLE,SINGLE,BLACK/AFRICAN AMERICAN,,,ACUTE RESPIRATORY DISTRESS SYNDROME;ACUTE RENAL FAILURE,0,1
41090,44222,192189,2180-07-19 06:55:00,2180-07-20 13:00:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME,Medicare,ENGL,CATHOLIC,SINGLE,WHITE,2180-07-19 04:50:00,2180-07-19 08:23:00,BRADYCARDIA,0,1
41092,44228,103379,2170-12-15 03:14:00,2170-12-24 18:00:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME HEALTH CARE,Private,ENGL,NOT SPECIFIED,SINGLE,WHITE,2170-12-15 02:22:00,2170-12-15 05:25:00,CHOLANGITIS,0,1
```

Extract a specific field (10) from a delimited file using cut (tab is default delimiter):

```
$ cut -f10 -d',' ADMISSIONS.csv
```

Extract a specific field (10) from a delimited file using cut (tab is default delimiter) and review output:

```
$ cut -f10 -d',' ADMISSIONS.csv | more
insurance
Medicare
Private
Medicare
...
```

Another solution to the above using awk:

```
$ awk -F"," '{print $10}' ADMISSIONS.csv
insurance
Medicare
Private
Medicare
...
```

Extract a specific field (10) from a delimited file using cut (tab is default delimiter) and review first five rows:

```
$ cut -f10 -d',' ADMISSIONS.csv | head -n 5
insurance
Medicare
Private
Medicare
Medicare
```

Extract specific fields (2,3,10) from a delimited file using cut (tab is default delimiter) and review output:

```
$ cut -f2,3,10 -d',' ADMISSIONS.csv
subject_id,hadm_id,insurance
10006,142345,Medicare
10011,105331,Private
10013,165520,Medicare
...
```

Another solution to the above using awk (also skip header line and separate fields with ‘|’ delimiter)

```
$ awk -F"," 'NR!=1{print $2,$3,$10}' OFS="|" ADMISSIONS.csv |more
10006|142345|Medicare
10011|105331|Private
10013|165520|Medicare
...
```

Combine cut, sort, and uniq to determine how many times each value in field 10 occurs:
(Need to sort first, so that uniq will be able to correctly tabulate values; command only remembers most recent row and current total counts)

```
$ cut -f10 -d',' ADMISSIONS.csv | sort | uniq -c
   1 Government
   6 Medicaid
  98 Medicare
  24 Private
   1 insurance
```

Sort in numerical order:

```
$ cut -f10 -d',' ADMISSIONS.csv | sort | uniq -c | sort -r
  98 Medicare
  24 Private
   6 Medicaid
   1 insurance
   1 Government
```

Retrieve rows that contain a particular phrase using grep (MacOS/Linux) or select-string (Windows):

```
$ grep "DIVORCED" ADMISSIONS.csv
12269,10017,199207,2149-05-26 17:19:00,2149-06-03 18:42:00,,EMERGENCY,EMERGENCY ROOM ADMIT,SNF,Medicare,,CATHOLIC,DIVORCED,WHITE,2149-05-26 12:08:00,2149-05-26 19:45:00,HUMERAL FRACTURE,0,1
12270,10019,177759,2163-05-14 20:43:00,2163-05-15 12:00:00,2163-05-15 12:00:00,EMERGENCY,TRANSFER FROM HOSP/EXTRAM,DEAD/EXPIRED,Medicare,,CATHOLIC,DIVORCED,WHITE,,,ALCOHOLIC HEPATITIS,1,1
12280,10029,132349,2139-09-22 10:58:00,2139-10-02 14:29:00,,EMERGENCY,EMERGENCY ROOM ADMIT,SNF,Medicare,,PROTESTANT QUAKER,DIVORCED,WHITE,2139-09-22 06:03:00,2139-09-22 11:50:00,SYNCOPE;TELEMETRY,0,1
12363,10112,188574,2148-01-13 22:32:00,2148-01-19 15:03:00,2148-01-19 15:03:00,URGENT,TRANSFER FROM HOSP/EXTRAM,DEAD/EXPIRED,Medicare,,PROTESTANT QUAKER,DIVORCED,WHITE,,,VF ARREST ,1,1
39859,40286,109698,2193-10-15 07:15:00,2193-10-20 13:18:00,,ELECTIVE,PHYS REFERRAL/NORMAL DELI,REHAB/DISTINCT PART HOSP,Medicare,ENGL,PROTESTANT QUAKER,DIVORCED,WHITE,,,LEFT HIP OA/SDA,0,1
39929,40503,168803,2186-07-06 19:59:00,2186-07-07 19:00:00,2186-07-07 19:00:00,EMERGENCY,TRANSFER FROM HOSP/EXTRAM,DEAD/EXPIRED,Medicare,ENGL,UNOBTAINABLE,DIVORCED,WHITE,,,STEMI;,1,1
```

Get the subject identifier (field 2), admission identifier (field 3), insurance (field 10) and diagnosis (field 17) for the above:

```
$ grep DIVORCED ADMISSIONS.csv | cut -f2,3,10,17 -d','
10017,199207,Medicare,HUMERAL FRACTURE
10019,177759,Medicare,ALCOHOLIC HEPATITIS
10029,132349,Medicare,SYNCOPE;TELEMETRY
10112,188574,Medicare,VF ARREST
40286,109698,Medicare,LEFT HIP OA/SDA
40503,168803,Medicare,STEMI;
```

Find admission times from the year 2112:

```
$ cut -d',' -f4 ADMISSIONS.csv | grep "2112"
2112-02-04 14:49:00
2112-05-04 08:00:00
2112-05-22 15:37:00
2112-05-28 15:45:00
```

Add “ADMISSIONS:” to the beginning of each line using sed:

```
$ sed 's/^/ADMISSION:/' ADMISSIONS.csv
ADMISSION:row_id,subject_id,hadm_id,admittime,dischtime,deathtime,admission_type,admission_location,discharge_location,insurance,language,religion,marital_status,ethnicity,edregtime,edouttime,diagnosis,hospital_expire_flag,has_chartevents_data
ADMISSION:12258,10006,142345,2164-10-23 21:09:00,2164-11-01 17:15:00,,EMERGENCY,EMERGENCY ROOM ADMIT,HOME HEALTH CARE,Medicare,,CATHOLIC,SEPARATED,BLACK/AFRICAN AMERICAN,2164-10-23 16:43:00,2164-10-23 23:00:00,SEPSIS,0,1
ADMISSION:12263,10011,105331,2126-08-14 22:32:00,2126-08-28 18:59:00,2126-08-28 18:59:00,EMERGENCY,TRANSFER FROM HOSP/EXTRAM,DEAD/EXPIRED,Private,,CATHOLIC,SINGLE,UNKNOWN/NOT SPECIFIED,,,HEPATITIS B,1,1
```

Replace “EMERGENCY ROOM” with “ER” and “SNF” with “SKILLED NURSING FACILITY” using sed:

```
$ cut -d',' -f7,8,9 ADMISSIONS.csv |more
admission_type,admission_location,discharge_location
EMERGENCY,EMERGENCY ROOM ADMIT,HOME HEALTH CARE
EMERGENCY,TRANSFER FROM HOSP/EXTRAM,DEAD/EXPIRED
EMERGENCY,TRANSFER FROM HOSP/EXTRAM,DEAD/EXPIRED
EMERGENCY,EMERGENCY ROOM ADMIT,SNF

$ cut -d',' -f7,8,9 ADMISSIONS.csv | sed 's/EMERGENCY ROOM/ER/g' | sed 's/SNF/SKILLED NURSING FACILITY/'
admission_type,admission_location,discharge_location
EMERGENCY,ER ADMIT,HOME HEALTH CARE
EMERGENCY,TRANSFER FROM HOSP/EXTRAM,DEAD/EXPIRED
EMERGENCY,TRANSFER FROM HOSP/EXTRAM,DEAD/EXPIRED
EMERGENCY,ER ADMIT,SKILLED NURSING FACILITY
```

## Exercises

1. Determine number of lines that have the value “ENGL”

```
$ YOUR COMMAND
      58     537   11802
```

2. Determine number of times each value in the discharge location field occurs

```
$ YOUR COMMAND
  40 DEAD/EXPIRED
  39 SNF
  15 HOME
  14 HOME HEALTH CARE -
  13 REHAB/DISTINCT PART HOSP
   3 ICF
   2 LONG TERM CARE HOSPITAL
   1 discharge_location
   1 HOSPICE-HOME
   1 HOME WITH HOME IV PROVIDR
   1 DISCH-TRAN TO PSYCH HOSP
```

3. Determine how many times each year in the admission time field occurs

```
$ YOUR COMMAND
   5 2201
   4 2202
   3 2200
   3 2145
   3 2112
   ...
```