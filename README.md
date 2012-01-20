#TPComposeView
TPComposeView is a simple modal view which allows the user to quickly compose text similar to the integrated [TWTweetComposeViewController](http://developer.apple.com/library/ios/#documentation/Twitter/Reference/TWTweetSheetViewControllerClassRef/Reference/Reference.html) in iOS 5.

![image](http://f.cl.ly/items/3B3p1N0J3W230L3V2w2Y/iOS%20Simulator%20Screen%20shot%20Jan%2015,%202012%2000.50.05%20.png)

###Installation
* Drag the ``TPComposeView/TPComposeView`` folder into your project.

###Usage
TPComposeView can be used in the same way as [TWTweetComposeViewController](http://developer.apple.com/library/ios/#documentation/Twitter/Reference/TWTweetSheetViewControllerClassRef/Reference/Reference.html). Set the ``completionHandler`` block and you are ready to go. Example:

    TPComposeView *composeView = [[TPComposeView alloc] initWithInitialText:@"Some text..."];
    composeView.title = @"Compose";
    composeView.completionHandler = ^(TPComposeViewResult result, NSString *text){
        switch (result) 
        {
            case TPComposeViewResultCancelled:
				// Cancelled
                break;
                
            case TPComposeViewResultDone:
				// Do some magic with the text
                break;                
        }
    };
    [composeView presentComposeView];
    [composeView release];   

Present the compose view using ``presentComposeView`` method. To limit the number of characters set the maxValue for ``maxChars`` (it will automatically show the char indicator).

####Optional methods
There are some additional methods you can use. See the header file.