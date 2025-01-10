function [aim_angle] = a_find_target_v1(data_angle, data_dist)

%% consts
TARGET_DIST = 100;
TOLERANCE = 15;

%% detect consecutive blocks
valid_indices = (data_dist >= TARGET_DIST-TOLERANCE) & (data_dist <= TARGET_DIST+TOLERANCE);
consecutive_blocks = diff([0, valid_indices, 0]);

block_starts = find(consecutive_blocks == 1);
block_ends = find(consecutive_blocks == -1) - 1;

%% find the largest block
block_lengths = block_ends - block_starts + 1;
[~, idx] = max(block_lengths);
largest_block_indices = block_starts(idx):block_ends(idx);

%% calculate object middle
obj_middle = floor(mean([largest_block_indices(1) largest_block_indices(length(largest_block_indices))]));

%% return angle
aim_angle = data_angle(obj_middle);
