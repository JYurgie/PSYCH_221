GENERATE DATA STRUCTURES:

This will run all of the scripts and save the structures for every loaded DNG. This takes forever.
Saving the structures and my garbage color routine take up so much time and should be commented out for fast debugging. 

The scripts do not average multiple frames. 

The saved structures are massive in size. 




** DATA FILE STRUCTURE **
PSYCH_Project/
	isetcam/
	psych221/
	project/
		DarkCurrentRate.m
		ReadNoise.m
		PRNU_DSNU.m
		xx.png
		Camera_Noise/
			DarkCurrentRate/
				ISO_XX
				..
				..
				fileinfo.xlsx
				ISOSpeed.mat
			Interesting/
				Interesting/
					xx.dng
					..
					xx.dng
			PRNU_DSNU/
				ISO_XX
				..
				..
				fileinfo.xlsx
				ISOSpeed.mat
			ReadNoise/
				ISO_XX
				..
				..
				fileinfo.xlsx
				ISOSpeed.mat
