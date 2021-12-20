function [BER_tmp] = BER_map(bit_rate, Rx_mat, N_psd, Constellation)

% input: bit_rate - link rate
%         Rx_mat - Rx power matrix
%         N_psd - Noise PSD
%         Constellation - Modulation scheme
            % 1 - BPSK; 
             % 2 - QPSK 
             % 3 - QAM-16
             % 4 - QAM-32
             % 5 - QAM-256      

% output: BER at the given grid

% find 'K' based on modulation scheme
if Constellation==1 % BPSK
    K = 1;
elseif Constellation==2 % QPSK
    K = 2;
elseif Constellation==3 % 16-QAM
    K = 4;
elseif Constellation==4 % 32-QAM
    K = 5;
elseif Constellation==5 % 256-QAM
    K = 8;
end

% Calculate symbol rate
sym_rate = bit_rate/K;

% Calculate symbol energy
symb_energy = Rx_mat/sym_rate;

% Calculate bit energy
bit_energy = symb_energy/K;

% Calculate SINR
SNR_tmp = symb_energy/N_psd;

% Calculate BER
if Constellation==1 % BPSK
    BER_tmp = qfunc(sqrt(2*SNR_tmp));
elseif Constellation==2 % QPSK
    BER_tmp = 2*qfunc(sqrt(2*SNR_tmp));
elseif Constellation==3 % 16-QAM
    BER_tmp = qfunc(sqrt(SNR_tmp*(4/5)));
elseif Constellation==4 % 32-QAM
    BER_tmp = (4/5)*qfunc(sqrt(SNR_tmp*(15/31)));
elseif Constellation==5 % 256-QAM
    BER_tmp = (1/2)*qfunc(sqrt(SNR_tmp*(8/85)));
end

end