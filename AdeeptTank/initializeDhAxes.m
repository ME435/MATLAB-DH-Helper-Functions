function initializeDhAxes

% Begin: Setup for this stand alone version that will NOT go into the GUI.
close all
app.axes_arm = axes;  % Create a new axes and save a handle to it.
app.jointAngles = [0 0 0]; % Start at the zero angle position.
%  End : Setup for this stand alone version that will NOT go into the GUI.



% Begin: Code that can go into your GUI's StartUpFunc.
clc

% Prepare the arm axes
view(app.axes_arm, [-5 -5 5]);
axis(app.axes_arm, [-12 12 -8 8 -6 16]);
set(app.axes_arm, 'Visible', 'off');

% Create vertices for all the patches
makeStlLink("AdeeptL0.stl", app.axes_arm, [.2 .2 .2]);  % Doesn't move. No need to save a handle to it.
% Save references to the vertices of each patch, make points 4x1 not 3x1.
app.link1Patch = makeStlLink("AdeeptL1.stl", app.axes_arm, [.9 .9 .9]);
app.link1Vertices = get(app.link1Patch, 'Vertices')';
app.link1Vertices(4,:) = ones(1, size(app.link1Vertices,2));

app.link2Patch = makeStlLink("AdeeptL2.stl", app.axes_arm, [.9 .9 .9]);
app.link2Vertices = get(app.link2Patch, 'Vertices')';
app.link2Vertices(4,:) = ones(1, size(app.link2Vertices,2));

app.link3Patch = makeStlLink("AdeeptL3.stl", app.axes_arm, [.9 .9 .9]);
app.link3Vertices = get(app.link3Patch, 'Vertices')';
app.link3Vertices(4,:) = ones(1, size(app.link3Vertices,2));
% End: Code that can go into your GUI's opening function.

updateArm(app);

end

function updateArm(app)

% TODO: Create the A homogeneous transformation matrices.

% TODO: Use the A matricies to form the T0_n matricies.
% T0_1 = 
% T0_2 = 
% T0_3 = 

% TODO: Use the T matricies to transform the patch vertices
% link1verticesWRTground = T0_1 * app.link1Vertices;
% link2verticesWRTground = T0_2 * app.link2Vertices;
% link3verticesWRTground = T0_3 * app.link3Vertices;

% TODO: Update the patches with the new vertices
% set(app.link1Patch,'Vertices', link1verticesWRTground(1:3,:)');
% set(app.link2Patch,'Vertices', link2verticesWRTground(1:3,:)');
% set(app.link3Patch,'Vertices', link3verticesWRTground(1:3,:)');

end