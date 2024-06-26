% Create a figure
figure;

% Load the built-in Earth texture
load('topo.mat', 'topo', 'topomap1');

% Create a sphere
[x, y, z] = sphere(50);

% Plot the sphere with the Earth texture
earth = surf(x, y, z, 'FaceColor', 'texturemap', 'EdgeColor', 'none');
set(earth, 'CData', topo);

% Set axis properties
axis equal;
axis vis3d;
set(gca, 'Color', [0 0.5 1]); % Set background color to blue

% Set viewing limits bigger than the Earth
xlim([-1.5 1.5]);
ylim([-1.5 1.5]);
zlim([-1.5 1.5]);

% Add lighting
light('Position', [1 0 1], 'Style', 'infinite');
lighting gouraud;

% Rotate the view
for angle = 1:360
    view(angle, 30); % Rotate around z-axis
    pause(0.05); % Pause to control the rotation speed
end
