Code Book for final meandat data set:
Filtered by | Labels
------------|--------
V1...562 | Subject
V1...563 | Activity

Original data set contained a 561-feature vector with time and frequency domain variables, filtered down to mean and standardard deviation columns:
Standard Deviation | Columns
-------------------|----------------
*1    V4    |       tBodyAcc-std()-X
*2    V5    |      tBodyAcc-std()-Y
*3    V6    |       tBodyAcc-std()-Z
*4   V44    |    tGravityAcc-std()-X
*5   V45    |    tGravityAcc-std()-Y
*6   V46    |    tGravityAcc-std()-Z
*7   V84    |   tBodyAccJerk-std()-X
*8   V85    |   tBodyAccJerk-std()-Y
*9  V86     |  tBodyAccJerk-std()-Z
*10 V124    |      tBodyGyro-std()-X
*11 V125    |      tBodyGyro-std()-Y
*12 V126    |      tBodyGyro-std()-Z
*13 V164    |  tBodyGyroJerk-std()-X
*14 V165    |  tBodyGyroJerk-std()-Y
*15 V166    |  tBodyGyroJerk-std()-Z
*16 V202    |      tBodyAccMag-std()
*17 V215    |   tGravityAccMag-std()
*18 V228    |  tBodyAccJerkMag-std()
*19 V241    |     tBodyGyroMag-std()
*20 V254    | tBodyGyroJerkMag-std()
*21 V269    |       fBodyAcc-std()-X
*22 V270    |       fBodyAcc-std()-Y
*23 V271    |       fBodyAcc-std()-Z
*24 V348    |   fBodyAccJerk-std()-X
*25 V349    |   fBodyAccJerk-std()-Y
*26 V350    |   fBodyAccJerk-std()-Z
*27 V427    |      fBodyGyro-std()-X
*28 V428    |      fBodyGyro-std()-Y
*29 V429    |      fBodyGyro-std()-Z
*30 V504    |      fBodyAccMag-std()
*31 V517  |fBodyBodyAccJerkMag-std()
*32 V530  |   fBodyBodyGyroMag-std()
*33 V543 |fBodyBodyGyroJerkMag-std()

Mean | Columns
-----|---------
*1    V1        |            tBodyAcc-mean()-X
*2    V2        |            tBodyAcc-mean()-Y
*3    V3        |            tBodyAcc-mean()-Z
*4   V41        |         tGravityAcc-mean()-X
*5   V42        |         tGravityAcc-mean()-Y
*6   V43        |         tGravityAcc-mean()-Z
*7   V81        |        tBodyAccJerk-mean()-X
*8   V82        |        tBodyAccJerk-mean()-Y
*9   V83        |        tBodyAccJerk-mean()-Z
*10 V121        |           tBodyGyro-mean()-X
*11 V122        |           tBodyGyro-mean()-Y
*12 V123        |           tBodyGyro-mean()-Z
*13 V161        |       tBodyGyroJerk-mean()-X
*14 V162        |       tBodyGyroJerk-mean()-Y
*15 V163        |       tBodyGyroJerk-mean()-Z
*16 V201        |           tBodyAccMag-mean()
*17 V214        |        tGravityAccMag-mean()
*18 V227        |       tBodyAccJerkMag-mean()
*19 V240        |          tBodyGyroMag-mean()
*20 V253        |      tBodyGyroJerkMag-mean()
*21 V266        |            fBodyAcc-mean()-X
*22 V267        |            fBodyAcc-mean()-Y
*23 V268        |            fBodyAcc-mean()-Z
*24 V294        |        fBodyAcc-meanFreq()-X
*25 V295        |        fBodyAcc-meanFreq()-Y
*26 V296        |        fBodyAcc-meanFreq()-Z
*27 V345        |        fBodyAccJerk-mean()-X
*28 V346        |        fBodyAccJerk-mean()-Y
*29 V347        |        fBodyAccJerk-mean()-Z
*30 V373        |    fBodyAccJerk-meanFreq()-X
*31 V374        |    fBodyAccJerk-meanFreq()-Y
*32 V375        |    fBodyAccJerk-meanFreq()-Z
*33 V424        |           fBodyGyro-mean()-X
*34 V425        |           fBodyGyro-mean()-Y
*35 V426        |           fBodyGyro-mean()-Z
*36 V452        |       fBodyGyro-meanFreq()-X
*37 V453        |       fBodyGyro-meanFreq()-Y
*38 V454        |       fBodyGyro-meanFreq()-Z
*39 V503        |           fBodyAccMag-mean()
*40 V513        |       fBodyAccMag-meanFreq()
*41 V516        |   fBodyBodyAccJerkMag-mean()
*42 V526       |fBodyBodyAccJerkMag-meanFreq()
*43 V529        |      fBodyBodyGyroMag-mean()
*44 V539        |fBodyBodyGyroMag-meanFreq()
*45 V542        |  fBodyBodyGyroJerkMag-mean()
*46 V552      |fBodyBodyGyroJerkMag-meanFreq()
*47 V555      |    angle(tBodyAccMean,gravity)
*48 V556 |angle(tBodyAccJerkMean),gravityMean)
*49 V557  |   angle(tBodyGyroMean,gravityMean)
*50 V558 |angle(tBodyGyroJerkMean,gravityMean)
*51 V559        |         angle(X,gravityMean)
*52 V560        |         angle(Y,gravityMean)
*53 V561        |         angle(Z,gravityMean)