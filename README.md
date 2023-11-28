# SLAM


- `run_CNN.py` is for the initially proposed model using a step-wise learning approach.
- `run_CNN.py` might need several attempts to converge. 
<br>

- `run_CNN_RNN.py` is for a new proposed model that uses LSTM cascaded to CNN.


<br><br>
# Dataset Preparation:
## For `run_CNN.py`
-   `/dataset` contain directories for `/training_set` and `/validation_set`.
-   Each contains sub-directories having multiple images of the same scene or class.
-   The images belonging to same class or same scene have modified environmental conditions. (occultation, illumination, diff ViewPoints) conditions.
-   The images may be scaled, rotated or partially occluded.

## For `run_CNN_RNN.py`
- Create the following directories (for example):
- `datasets` -> `GardensPointWalking`-> `day_left`  ; `day_right` ; `night_right`; (csv - optional)
- `results`
- `checkpoints`

<br><br>
# Runtime Environment

## For `run_CNN.py`
- The `requirements.txt` file list Python version and all libraries depend on: (if run on a local machine)
- Installed using:
```
pip install -r requirements.txt
```
- For Colab, use the below code to manage the versions.
```
import sys
print("User Current Version:-", sys.version)
!sudo apt-get update -y
!sudo apt-get install python3.8
!sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 2
!sudo apt-get install python3-pip
!sudo apt install python3.8-distutils
!python --version
```
- Further use the `!pip instal` command to install other dependencies given in `requirements.txt`


## For `run_CNN_RNN.py`
- Directly run the bash command `sh demo.sh`
- Do the corresponding changes in the CLI bash file `./demo.sh`: (local machine)
    - To change the model (Pre-train)
    - To change the number of input image sequences.
- For Colab (after changing the current (drive) directory)
- `resnet18` as an example is used in `demo.sh` 
```
!pip install tqdm
!pip install fire
!sh demo.sh
```



