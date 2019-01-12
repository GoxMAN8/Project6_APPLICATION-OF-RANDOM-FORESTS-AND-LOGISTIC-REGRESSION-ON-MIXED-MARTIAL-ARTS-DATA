function [iterations, accuracy_train, accuracy_test] = learningCurveLR(X, Y,Xtest, Ytest,w0, maxIterations,incrementIterations,learnrate)

%learningCurveLR generates training, testing accuacy values, for Logistic
% Regression algorithm with increasing number of iteraions in gradient descent update.

%X is training data
%y is class labels
%maxIterations is the maximum number of logistic regression iterations
%incrementIterations is the increment of number of iterations in consideration
%lambda is logistic regression regularization parameter

% Return accuracy values correctly
accuracy_train = zeros(maxIterations/incrementIterations, 1);
accuracy_test   = zeros(maxIterations/incrementIterations, 1);
iterations = zeros(maxIterations/incrementIterations, 1);
indx=1; %Create indexing for data. 

% Loop over the different number of iterations and accuracy.
for i = incrementIterations:incrementIterations:maxIterations+1
    
    fprintf('Learning... number of logistic iterations: %d\n', i) 
    % Check if we do not get only one class in our subset of data, in which
    % case C has to be equal 1.
   
   % training a single model
   weight = logisticRegressionWeights( X, Y, w0, i, learnrate);  
   [pred_probs_train,pred_classes_train] = logisticRegressionClassify( X, weight ); % Probability estimation on training set  
   [pred_probs_test,pred_classes_test] = logisticRegressionClassify( Xtest, weight ); % Probability estimation on testing set

   % Accuracy training
   correct_train = (pred_classes_train == Y); 
   accuracy_train(indx)= sum(correct_train)/length(correct_train);
   
   % Accuracy testing
   correct_test = (pred_classes_test == Ytest);
   accuracy_test(indx)= sum(correct_test)/length(correct_test);
   
   iterations(indx)=i; % Store number of iterations
   indx=indx+1; % Move of an index, of a data storage.
   
   fprintf('Learning finished. Testing accuracy: %d\n', accuracy_test) 

   
 
end
fprintf('DONE')
end