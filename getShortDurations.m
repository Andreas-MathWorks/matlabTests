function [numberOfDurations,isShort] = getShortDurations(durations,durationThreshold)
    arguments
        durations (:,1) duration
        durationThreshold (1,1) duration = prctile(durations,10)
    end


    isShort = durations<durationThreshold;
    numberOfDurations = nnz(isShort);
end