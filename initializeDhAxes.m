function initializeDhAxes

% Begin: Setup for this stand alone version that will not go into the GUI.
close all
handles.axes_arm = axes;
handles.user.jointAngles = [0 90 0 -90 90]; % Home position.
% End: Setup for this stand alone version that will not go into the GUI.

% Begin: Code that can go into your GUI's opening function.
clc

% Prepare the arm axes
view(handles.axes_arm, [-50 -50 50]);
axis(handles.axes_arm, [-10 10 -6 6 -6 8]);
grid on
xlabel('x')
ylabel('y')
zlabel('z')

% Create vertices for all the patches
makeLink0(handles.axes_arm, [.5 .5 .5]);  % Doesn't move. No handles needed.
% Save handles to the patch objects and create a vertices matrix for each.
handles.user.link1Patch = makeLink1(handles.axes_arm, [.9 .9 .9]);
handles.user.link1Vertices = get(handles.user.link1Patch, 'Vertices')';
handles.user.link1Vertices(4,:) = ones(1, size(handles.user.link1Vertices,2));
handles.user.link2Patch = makeLink2(handles.axes_arm, [.9 .9 .9]);
handles.user.link2Vertices = get(handles.user.link2Patch, 'Vertices')';
handles.user.link2Vertices(4,:) = ones(1, size(handles.user.link2Vertices,2));
handles.user.link3Patch = makeLink3(handles.axes_arm, [.9 .9 .9]);
handles.user.link3Vertices = get(handles.user.link3Patch, 'Vertices')';
handles.user.link3Vertices(4,:) = ones(1, size(handles.user.link3Vertices,2));
handles.user.link4Patch = makeLink4(handles.axes_arm, [.9 .9 .9]);
handles.user.link4Vertices = get(handles.user.link4Patch, 'Vertices')';
handles.user.link4Vertices(4,:) = ones(1, size(handles.user.link4Vertices,2));
handles.user.link5Patch = makeLink5(handles.axes_arm, [.95 .95 0]);
handles.user.link5Vertices = get(handles.user.link5Patch, 'Vertices')';
handles.user.link5Vertices(4,:) = ones(1, size(handles.user.link5Vertices,2));
% End: Code that can go into your GUI's opening function.

updateArm('unused', handles);

end

function updateArm(hObject, handles)

% TODO: Create the five homogeneous transformation matrices.

% TODO: Use the matrix to transform the patch vertices

% TODO: Update the patches with the new vertices.
% set(handles.user.link1Patch,'Vertices', link1verticesWRTground(1:3,:)');



% Update x, y, and z using the gripper (end effector) origin.
% dhOrigin = [0 0 0 1]';
% gripperWRTground = T1 * T2 * T3 * T4 * T5 * dhOrigin;
% fprintf('(%.3f, %.3f, %.3f)\n', gripperWRTground);

end