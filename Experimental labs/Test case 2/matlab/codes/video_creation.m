% Create a video writer object
%Import workspace
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['x_velocity_mean', strtime, '.mp4'];
videoFilename = char(videoFilename);
vid = VideoWriter(videoFilename, 'MPEG-4');
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second) (same as sampling frequency)
open(vid);

figure()
cmin = min(u_avg, [], 'all');
cmax = max(u_avg, [], 'all');
for t = 1:length(times)
    clf;

    pcolor(Grid_X0_D, Grid_Y0_D, u_avg(:, :, t));
    shading interp
    colorbar
    clim([cmin cmax]);  % Fix the color axis for all plots
    axis equal
    title('x-velocity over time')
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    
    
    % Title for the whole window of plots
    sgtitle(['Time moving average at t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)
%%
% Create a video writer object
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['y_velocity_mean_', strtime, '.mp4'];
videoFilename = char(videoFilename); 
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second)(same as sampling frequency)
open(vid);

figure('Position', [100 100 700 526]);  % Exact size expected by VideoWriter
cmin = min(v_avg, [], 'all');
cmax = max(v_avg, [], 'all');
for t = 1:length(times)
    clf;

    pcolor(Grid_X0_D, Grid_Y0_D, v_avg(:, :, t));
    shading interp
    colorbar
    clim([cmin cmax]);  % Fix the color axis for all plots
    axis equal
    title('y-velocity over time')
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    
    % Title for the whole window of plots
    sgtitle(['Time moving average at t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)
%%
% Create a video writer object
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['velocity_field_mean', strtime, '.mp4'];
videoFilename = char(videoFilename); 
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second)(same as sampling frequency)
open(vid);

figure('Position', [100 100 700 526]);  % Exact size expected by VideoWriter

for t = 1:length(times)
    clf;

    quiverC2D(Grid_X0_D, Grid_Y0_D, u_avg(:, :, t), v_avg(:, :, t), 1);
    axis equal
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    title('Velocity field vector map over time');
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    
    % Title for the whole window of plots
    sgtitle(['Time moving average at t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)
%%
% Create a video writer object
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['magnitude_avg_', strtime, '.mp4'];
videoFilename = char(videoFilename); 
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second)(same as sampling frequency)
open(vid);

figure('Position', [100 100 700 526]);  % Exact size expected by VideoWriter
cmin = min(m_avg, [], 'all');
cmax = max(m_avg, [], 'all');
for t = 1:length(times)
    clf;

    pcolor(Grid_X0_D, Grid_Y0_D, m_avg(:, :, t));
    shading interp
    colorbar
    clim([cmin cmax]);  % Fix the color axis for all plots
    axis equal
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    title('Velocity magnitude over time')
    
    % Title for the whole window of plots
    sgtitle(['Time moving average at t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)
%%
% Create a video writer object
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['vorticity_mean_', strtime, '.mp4'];
videoFilename = char(videoFilename); 
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second)(same as sampling frequency)
open(vid);

figure('Position', [100 100 700 526]);  % Exact size expected by VideoWriter
cmin = min(vorticity_mean, [], 'all');
cmax = max(vorticity_mean, [], 'all');
for t = 1:length(times)
    clf;

    pcolor(Grid_X0_D, Grid_Y0_D, vorticity_mean(:, :, t));
    shading interp
    colorbar
    clim([cmin cmax]);  % Fix the color axis for all plots
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    axis tight
    axis equal
    title('Vorticity field over time');
    hold on
    
    %overlap streamlines and cylinder
    streamslice(Grid_X0_D, Grid_Y0_D, u_avg(:, :, t), v_avg(:, :, t), 'r--');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    hold off
    
    % Title for the whole window of plots
    sgtitle(['Time moving average at t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)
%%
% Create a video writer object
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['streamlines_avg_', strtime, '.mp4'];
videoFilename = char(videoFilename); 
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second)(same as sampling frequency)
open(vid);

figure('Position', [100 100 700 526]);  % Exact size expected by VideoWriter

for t = 1:length(times)
    clf;

    streamslice(Grid_X0_D, Grid_Y0_D, u_avg(:, :, t), v_avg(:, :, t), 'b--');
    axis equal
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    title('Velocity field streamlines over time');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    hold off

    
    % Title for the whole window of plots
    sgtitle(['Time moving average at t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)
%%
% Create a video writer object
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['x_velocity_', strtime, '.mp4'];
videoFilename = char(videoFilename); 
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second)(same as sampling frequency)
open(vid);

figure('Position', [100 100 700 526]);  % Exact size expected by VideoWriter
cmin = min(u0_Ub, [], 'all');
cmax = max(u0_Ub, [], 'all');
for t = 1:length(times)
    clf;

    pcolor(Grid_X0_D, Grid_Y0_D, u0_Ub(:, :, t));
    shading interp
    colorbar
    clim([cmin cmax]);  % Fix the color axis for all plots
    axis equal
    title('x-velocity over time')
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    
    % Title for the whole window of plots
    sgtitle(['Time t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end
close(vid)

%%
% Create a video writer object
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['y_velocity_', strtime, '.mp4'];
videoFilename = char(videoFilename); 
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second)(same as sampling frequency)
open(vid);

figure('Position', [100 100 700 526]);  % Exact size expected by VideoWriter
cmin = min(v0_Ub, [], 'all');
cmax = max(v0_Ub, [], 'all');
for t = 1:length(times)
    clf;

    pcolor(Grid_X0_D, Grid_Y0_D, v0_Ub(:, :, t));
    shading interp
    colorbar
    clim([cmin cmax]);  % Fix the color axis for all plots
    axis equal
    title('y-velocity over time')
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])

    % Title for the whole window of plots
    sgtitle(['Time t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)

%%

time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['velocity_field_', strtime, '.mp4'];
videoFilename = char(videoFilename);
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second) (same as sampling frequency)
open(vid);

figure()

for t = ceil(length(times)/2):length(times)

    clf;
    
    quiverC2D(Grid_X0_D, Grid_Y0_D, u0_Ub(:, :, t), v0_Ub(:, :, t), 1);
    axis equal
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    title('Velocity field vector map over time');
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');

    % Title for the whole window of plots
    sgtitle(['Time t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)

%% 

time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['magnitude_', strtime, '.mp4'];
videoFilename = char(videoFilename);
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second) (same as sampling frequency)
open(vid);

figure()
cmin = min(mag, [], 'all');
cmax = max(mag, [], 'all');
for t = ceil(length(times)/2):length(times)

    clf;
   
    pcolor(Grid_X0_D, Grid_Y0_D, mag(:, :, t));
    shading interp
    colorbar
    clim([cmin cmax]);  % Fix the color axis for all plots
    axis equal
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    title('Velocity magnitude over time')
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])

    % Title for the whole window of plots
    sgtitle(['Time t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)

%% 

time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['vorticity_', strtime, '.mp4'];
videoFilename = char(videoFilename);
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second) (same as sampling frequency)
open(vid);

figure()
cmin = min(vorticity_time, [], 'all');
cmax = max(vorticity_time, [], 'all');
for t = ceil(length(times)/2):length(times)

    clf;
    pcolor(Grid_X0_D, Grid_Y0_D, vorticity_time(:, :, t));
    shading interp
    colorbar
    clim([cmin cmax]);  % Fix the color axis for all plots
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    axis tight
    axis equal
    title('Vorticity field over time');
    hold on
    
    %overlap streamlines and cylinder
    streamslice(Grid_X0_D, Grid_Y0_D, u0_Ub(:, :, t), v0_Ub(:, :, t), 'r--');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    hold off

    % Title for the whole window of plots
    sgtitle(['Time t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)

%%
time = datetime('now', 'Format', 'yyyyMMdd_HHmmss');
strtime = char(time);
videoFilename = ['streamlines_', strtime, '.mp4'];
videoFilename = char(videoFilename);
vid = VideoWriter(videoFilename, 'MPEG-4');
vid.FrameRate = fs; % Set playback speed (frames per second) (same as sampling frequency)
open(vid);

figure()

for t = ceil(length(times)/2):length(times)

    clf;
    streamslice(Grid_X0_D, Grid_Y0_D, u0_Ub(:, :, t), v0_Ub(:, :, t));
    set(gca,'DataAspectRatio',[1 1 1]);
    axis equal
    shading interp
    hold on
    rectangle('Position', [-1, -1/2, 1, 1], 'Curvature',[1, 1], 'FaceColor','g');
    title('Velocity field streamlines over time');
    ylim([-1, 1.45])
    xlim([-1, 2.45])
    hold off


    % Title for the whole window of plotg
    sgtitle(['Time t= ', num2str((t-1)*T_sample, '%.3f')]);

    drawnow;
    pause(1/vid.FrameRate)

    % Capture the current frame
    frame = getframe(gcf);
    writeVideo(vid, frame);
end

close(vid)