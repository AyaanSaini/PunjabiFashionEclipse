<span class='star-rating'>
  <ng-container *ngIf='!forDisplay'>
    <i *ngFor='let n of range; let $index = index;' class='fa to-rate' (click)='mark($index)' [ngClass]='isMarked($index)'></i>
    <span>Rating: {{score}}</span>
    <span class='submit-button'>
        <button type="button" class="btn btn-primary">Submit</button>
     </span>
  </ng-container>
  
  <ng-container *ngIf='forDisplay'>
    <i *ngFor='let n of range; let $index = index;' class="to-display fa" [ngClass]='isMarked($index)'></i>
    <div>Rating: {{displayRatingScore}}</div>
  </ng-container>
  
</span>