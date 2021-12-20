function state = LOS_nLOS(g_mat)

% Input: 1 : x-location of Tx
%        1 : y-location of Tx
%        Rx_x : x-location of Receiver
%        Rx_y : y-location of Receiver

% Output: state : 1 -> LOS condition or 
%                 2 -> nLOS condition

[row,col] = size(g_mat);
mid = (row/2)+0.5;

state = zeros(row,col);
% for idx1=1:row
%     for idx2 = 1:col
%         if idx1==mid && idx2==mid-1
%             state(idx1,idx2)=1;
%         elseif idx1==mid && idx2==mid+1
%             state(idx1,idx2)=1;
%         elseif idx1==mid-1 && idx2==mid
%             state(idx1,idx2)=1;
%         elseif idx1==mid+1 && idx2==mid
%             state(idx1,idx2)=1;
%         elseif idx1==mid-1 && idx2==mid-1
%             state(idx1,idx2)=1;
%         elseif idx1==mid-1 && idx2==mid+1
%             state(idx1,idx2)=1;
%         elseif idx1==mid+1 && idx2==mid-1
%             state(idx1,idx2)=1;
%         elseif idx1==mid+1 && idx2==mid+1
%             state(idx1,idx2)=1;
%         elseif idx1==mid && idx2==mid
%             state(idx1,idx2)=1;
%         else 
%             state(idx1,idx2)=1;
%         end
% 
%     end
% end

for idx1=1:row
    for idx2 = 1:col
        if idx1==mid && idx2==mid-1
            state(idx1,idx2)=2;
        elseif idx1==mid && idx2==mid+1
            state(idx1,idx2)=2;
        elseif idx1==mid-1 && idx2==mid
            state(idx1,idx2)=2;
        elseif idx1==mid+1 && idx2==mid
            state(idx1,idx2)=2;
        elseif idx1==mid-1 && idx2==mid-1
            state(idx1,idx2)=2;
        elseif idx1==mid-1 && idx2==mid+1
            state(idx1,idx2)=2;
        elseif idx1==mid+1 && idx2==mid-1
            state(idx1,idx2)=2;
        elseif idx1==mid+1 && idx2==mid+1
            state(idx1,idx2)=2;
        elseif idx1==mid && idx2==mid
            state(idx1,idx2)=2;
        else 
            state(idx1,idx2)=2;
        end

    end
end

end