FROM keyi/python2-mcr2017a-rpi-isl

COPY STMB_O38/ ./STMB_O38
COPY O38_STMB_wrapper.py ./
COPY setup.py ./
COPY trainData.csv ./
COPY trainTargets.csv ./


# RUN apt-get -qq update && apt-get -qq install -y unzip && unzip -q MCR_R2017a_glnxa64_installer.zip && ./install -mode silent -agreeToLicense yes
# RUN python ./setup.py install

# RUN pip install numpy

# ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/MATLAB/MATLAB_Runtime/v92/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v92/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v92/sys/os/glnxa64
# ENV XAPPLRESDIR /usr/src/app/v92/X11/app-defaults


# CMD ["python", "./setup.py", "install"] 
# CMD ["python", "./O38_STMB_wrap.py", "trainData.csv", "trainTargets.csv"]
