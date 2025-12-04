.class public Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;
.super Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.source "PrivateCategoryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jrdcom/filemanager/ISafeCategoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;
    }
.end annotation


# static fields
.field private static final DATA_UPDATED:I = 0x64


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;

.field protected mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;

.field private mContext:Landroid/content/Context;

.field private mFirstSafebox:Z

.field private mListView:Landroid/widget/ListView;

.field private mMode:Ljava/lang/String;

.field private mNoPrivateContent:Landroid/widget/TextView;

.field private mNoPrivateFileLay:Landroid/widget/RelativeLayout;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;-><init>()V

    .line 32
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 35
    const-string v0, "category"

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mMode:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mFirstSafebox:Z

    return-void
.end method

.method private refreshCategoryAdapter()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;->notifyDataSetChanged()V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public clickAddFileBtn(Z)V
    .locals 2

    .line 59
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 61
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 64
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    :goto_0
    return-void
.end method

.method public isShowFileTypeInterface()Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const/4 v0, 0x1

    return v0

    .line 184
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 139
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 88
    :try_start_0
    instance-of v0, p1, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    nop

    .line 96
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onAttach(Landroid/app/Activity;)V

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "must implement CategoryFragmentListener"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v0, 0x3

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 104
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mContext:Landroid/content/Context;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 106
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->setHasOptionsMenu(Z)V

    .line 107
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 73
    const p3, 0x7f0b0043

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 145
    const/4 p1, 0x2

    sput p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 147
    const/4 p2, 0x0

    if-eqz p3, :cond_4

    const/4 p4, 0x1

    if-eq p3, p4, :cond_3

    const/4 p4, 0x3

    if-eq p3, p1, :cond_2

    if-eq p3, p4, :cond_1

    const/4 p1, 0x4

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    const/16 p3, 0x8

    sput p3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 170
    sput p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    goto :goto_0

    .line 164
    :cond_1
    const/4 p1, 0x5

    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 165
    sput p4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 166
    goto :goto_0

    .line 159
    :cond_2
    sput p4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 160
    sput p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 161
    goto :goto_0

    .line 154
    :cond_3
    const/4 p1, 0x6

    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 155
    sput p4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 156
    goto :goto_0

    .line 149
    :cond_4
    const/4 p1, 0x7

    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 150
    sput p2, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 151
    nop

    .line 174
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;->updateCategoryNormalBarView()V

    .line 175
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment$PrivateFragmentListener;->switchContentByViewMode(Z)V

    .line 177
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 112
    invoke-super {p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    const p2, 0x7f080159

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mListView:Landroid/widget/ListView;

    .line 114
    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 115
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 116
    new-instance p2, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;

    .line 117
    const p2, 0x7f0800ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    .line 118
    const p2, 0x7f0800ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mNoPrivateContent:Landroid/widget/TextView;

    .line 119
    sget-boolean p1, Lcom/jrdcom/filemanager/manager/SafeManager;->isPrivateFileTypeInterface:Z

    const/16 p2, 0x8

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result p1

    if-gtz p1, :cond_1

    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 127
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 121
    :cond_1
    :goto_0
    sput-boolean v0, Lcom/jrdcom/filemanager/manager/SafeManager;->isPrivateFileTypeInterface:Z

    .line 122
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 123
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/PrivateCategoryAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 129
    :goto_1
    return-void
.end method

.method public refreshSafeCategory()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->refreshCategoryAdapter()V

    .line 55
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/PrivateCategoryFragment;->mMode:Ljava/lang/String;

    .line 41
    return-void
.end method
