Instructions for MATLAB Substituition Cipher decryption using Metropolis Algorithm:
***********************************************************************************
/1. Load workspace (double-click)
	>> load('sem1_2018_encrypt.mat')
/2. Generate transition probability matrix: 
	>> pr_trans = compute_transition_probability(training_txt); 
/3. Decrypt desired encrypted text (1st argument of function input):
	>> [decrypted_txt, decrypt_key] = mcmc_decrypt_text(frank_encrypted_txt,pr_trans);
	>> [decrypted_txt, decrypt_key] = mcmc_decrypt_text(mystery_encrypted_txt,pr_trans);