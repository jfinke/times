### Help
This very simple app computes the time for common road running race distances given a pace entered in minutes and seconds.

The pace is inputed in miles per minute.  The user can either type in the minutes and seconds by clicking in the field and typing a number or use the up and down arrows to change the numbers.

There is no realistic limit.  In other words, the user can input a pace of 0 minutes and 30 seconds.  No human could run that fast.  This does not calculate predictions, only multiples out the pace by the distance.

A copy of the source code can be found at: https://github.com/jfinke/times

This is a reactive interaction.  There is no need to have a submit button.  The app automatically recalculates when the user changes the minute or second fields.
```{r}
# Some example calculations
  # Calculate time for distance
  fivek<-(totalsec * 3.1069)
  fivem<-(totalsec * 5)
  tenk<-(totalsec * 6.2138)
  tenm<-(totalsec * 10)
  halfmara<-(totalsec * 13.10938)
  mara<-(totalsec * 26.21875)

```