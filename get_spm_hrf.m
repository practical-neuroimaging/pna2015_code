% Sample standard SPM HRF at different dt values
%
% Needs SPM on MATLAB or Octave path

% Sample at different smallest time differences
hrf_0p1 = spm_hrf(0.1);
hrf_1 = spm_hrf(1);
hrf_2p5 = spm_hrf(2.5);

% Save as text files
save spm_hrf_0p1.txt hrf_0p1 -ascii
save spm_hrf_1.txt hrf_1 -ascii
save spm_hrf_2p5.txt hrf_2p5 -ascii
