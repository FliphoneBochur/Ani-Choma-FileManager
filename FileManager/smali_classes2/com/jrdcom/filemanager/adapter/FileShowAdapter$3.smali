.class Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;
.super Ljava/lang/Object;
.source "FileShowAdapter.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->onBindViewHolder(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

.field final synthetic val$currentItem:Lcom/jrdcom/filemanager/utils/FileInfo;

.field final synthetic val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

.field final synthetic val$mNameTextView:Landroid/widget/TextView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;ILcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iput p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iput-object p4, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$mNameTextView:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$currentItem:Lcom/jrdcom/filemanager/utils/FileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 7

    .line 548
    const/4 v0, 0x3

    if-eqz p2, :cond_2

    .line 550
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$600(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$position:I

    if-nez v1, :cond_0

    .line 551
    return-void

    .line 554
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 555
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_0

    .line 557
    :cond_1
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const v2, 0x7f070065

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 559
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/jrdcom/filemanager/utils/CommonUtils;->SELECT_BACKGROUND_COLOR_ID:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 560
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0500ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$200(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v1

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-ne v1, v0, :cond_4

    .line 563
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$mNameTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$000(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getQueryText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V

    goto :goto_2

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    goto :goto_1

    .line 570
    :cond_3
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v1, v1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/view/FileItemView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    const v2, 0x7f070064

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 572
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 574
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$mNameTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 576
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$200(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/FileManagerApplication;

    move-result-object v1

    iget v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-ne v1, v0, :cond_4

    .line 577
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$mNameTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$000(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {v2}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->getQueryText()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setSearchHighLight(Landroid/widget/TextView;Ljava/lang/String;Z)V

    .line 581
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$mNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 583
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget v2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$position:I

    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$holder:Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;

    iget-object v3, v0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$MyViewHolder;->fileitemView:Lcom/jrdcom/filemanager/view/FileItemView;

    iget-object v4, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$currentItem:Lcom/jrdcom/filemanager/utils/FileInfo;

    sget v5, Lcom/jrdcom/filemanager/manager/IconManager;->LIST_ITEM:I

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$700(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;IZ)V

    .line 585
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$400(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 586
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-static {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$400(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;)Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;

    move-result-object v0

    iget v1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$position:I

    invoke-interface {v0, p1, p2, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;->onItemFocusChange(Landroid/view/View;ZI)V

    .line 589
    :cond_5
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->this$0:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    iget p2, p0, Lcom/jrdcom/filemanager/adapter/FileShowAdapter$3;->val$position:I

    invoke-static {p1, p2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->access$502(Lcom/jrdcom/filemanager/adapter/FileShowAdapter;I)I

    .line 590
    return-void
.end method
