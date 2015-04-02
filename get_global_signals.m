% Get SPM global signal estimate for all volumes in bold 4D
%
% Needs SPM on MATLAB / Octave path
file_volno = spm_select('ExtFPList', pwd, 'three_vols.nii', inf);
V = spm_vol(file_volno);
global_signals = ones([length(V), 1]);
for i = 1:length(V)
    global_signals(i) = spm_global(V(i));
end
% Save signal values to a text file
save global_signals.txt global_signals -ascii
