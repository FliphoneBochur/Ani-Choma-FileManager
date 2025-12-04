.class public Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;
.super Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.source "SafeCategoryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jrdcom/filemanager/ISafeCategoryListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;,
        Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

.field private mAddFileBtn:Landroid/widget/Button;

.field protected mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;

.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mMode:Ljava/lang/String;

.field private mNoPrivateContent:Landroid/widget/TextView;

.field private mNoPrivateFileLay:Landroid/widget/RelativeLayout;

.field private mResources:Landroid/content/res/Resources;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;-><init>()V

    .line 42
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 44
    const-string v0, "category"

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mMode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;)Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    return-object p0
.end method

.method private loadCountText(Landroid/widget/TextView;)V
    .locals 2

    .line 166
    new-instance p1, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$1;

    invoke-direct {p1, p0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$1;-><init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;)V

    .line 175
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jrdcom/filemanager/manager/SafeManager;->getInstance(Landroid/content/Context;)Lcom/jrdcom/filemanager/manager/SafeManager;

    move-result-object v0

    new-instance v1, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$2;-><init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/os/Handler;)V

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/SafeManager;->loadCategoryCountText(Lcom/jrdcom/filemanager/manager/SafeManager$CountTextCallback;)V

    .line 182
    return-void
.end method

.method private refreshAdapter()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    if-eqz v0, :cond_0

    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->loadCountText(Landroid/widget/TextView;)V

    .line 156
    :cond_0
    return-void
.end method

.method private refreshCategoryAdapter()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->notifyDataSetChanged()V

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public clickAddFileBtn(Z)V
    .locals 2

    .line 71
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 73
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 78
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->setList(Ljava/util/ArrayList;)V

    .line 80
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;

    if-eqz p1, :cond_1

    .line 82
    invoke-interface {p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;->hideMoreMenu()V

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->refreshAdapter()V

    .line 86
    :goto_0
    return-void
.end method

.method public isShowFileTypeInterface()Z
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x1

    return v0

    .line 272
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 186
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    .line 188
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 189
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 191
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 192
    const v2, 0x7f0700e4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 193
    const v4, 0x7f0c0090

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;-><init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 195
    const v2, 0x7f0700e0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 196
    const v4, 0x7f0c008f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;-><init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 198
    const v2, 0x7f0700de

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 199
    const v4, 0x7f0c0034

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;-><init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 201
    const v2, 0x7f0700e3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 202
    const v4, 0x7f0c0035

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;-><init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 204
    const v2, 0x7f0700e6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 205
    const v4, 0x7f0c0037

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;-><init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 207
    const v2, 0x7f0700dd

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mResources:Landroid/content/res/Resources;

    .line 208
    const v3, 0x7f0c0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$PrivateItem;-><init>(Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    sget-boolean p1, Lcom/jrdcom/filemanager/manager/SafeManager;->isFileTypeInterface:Z

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/manager/SafeManager;->getPrivateFileCount(Landroid/content/Context;)I

    move-result p1

    if-gtz p1, :cond_1

    sget p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 220
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 221
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_1

    .line 212
    :cond_1
    :goto_0
    sput-boolean v1, Lcom/jrdcom/filemanager/manager/SafeManager;->isFileTypeInterface:Z

    .line 213
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;->setList(Ljava/util/ArrayList;)V

    .line 215
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 216
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 224
    :goto_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 110
    :try_start_0
    instance-of v0, p1, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;

    if-eqz v0, :cond_0

    .line 111
    move-object v0, p1

    check-cast v0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mActivity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    nop

    .line 118
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onAttach(Landroid/app/Activity;)V

    .line 119
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
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

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 96
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->clickAddFileBtn(Z)V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const/4 v0, 0x2

    iput v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentLocation:I

    .line 125
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mContext:Landroid/content/Context;

    .line 126
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->setHasOptionsMenu(Z)V

    .line 127
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 91
    const p3, 0x7f0b0044

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

    .line 228
    const/4 p1, 0x2

    sput p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mSafeCurrentOperration:I

    .line 230
    const/4 p2, 0x0

    if-eqz p3, :cond_5

    const/4 p4, 0x1

    if-eq p3, p4, :cond_4

    const/4 p4, 0x3

    if-eq p3, p1, :cond_3

    const/4 p1, 0x4

    if-eq p3, p4, :cond_2

    const/4 p4, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p4, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    const/16 p1, 0x8

    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 258
    sput p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    goto :goto_0

    .line 252
    :cond_1
    sput p4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 253
    sput p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 254
    goto :goto_0

    .line 247
    :cond_2
    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 248
    sput p4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 249
    goto :goto_0

    .line 242
    :cond_3
    sput p4, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 243
    sput p1, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 244
    goto :goto_0

    .line 237
    :cond_4
    const/4 p1, 0x6

    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 238
    sput p4, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 239
    goto :goto_0

    .line 232
    :cond_5
    const/4 p1, 0x7

    sput p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 233
    sput p2, Lcom/jrdcom/filemanager/manager/SafeManager;->mCurrentSafeCategory:I

    .line 234
    nop

    .line 262
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;->updateCategoryNormalBarView()V

    .line 263
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;

    invoke-interface {p1, p2}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment$CategoryFragmentListener;->switchContentByViewMode(Z)V

    .line 265
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 146
    invoke-super {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onResume()V

    .line 147
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->refreshAdapter()V

    .line 150
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 132
    invoke-super {p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    const p2, 0x7f080159

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    .line 134
    const p2, 0x7f080130

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAddFileBtn:Landroid/widget/Button;

    .line 135
    const p2, 0x7f0800ef

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ScrollView;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 136
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAddFileBtn:Landroid/widget/Button;

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    new-instance p2, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p2, v0}, Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/SafeCategoryAdapter;

    .line 139
    const p2, 0x7f0800ee

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mNoPrivateFileLay:Landroid/widget/RelativeLayout;

    .line 140
    const p2, 0x7f0800ed

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mNoPrivateContent:Landroid/widget/TextView;

    .line 142
    return-void
.end method

.method public refreshSafeCategory()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->refreshCategoryAdapter()V

    .line 67
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/SafeCategoryFragment;->mMode:Ljava/lang/String;

    .line 53
    return-void
.end method
