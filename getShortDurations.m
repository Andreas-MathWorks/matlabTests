function [numberOfDurations,isShort] = getShortDurations(durations,durationThreshold)
    arguments
        durations (:,1) duration
        durationThreshold (1,1) duration = 3*std(durations)
    end

    isShort=durations<durationThreshold;
    numberOfDurations=nnz(isShort);
end