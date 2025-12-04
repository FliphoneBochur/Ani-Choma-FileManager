.class public Lcom/jrdcom/filemanager/fragment/CategoryFragment;
.super Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.source "CategoryFragment.java"

# interfaces
.implements Lcom/jrdcom/filemanager/adapter/CategoryAdapter$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/jrdcom/filemanager/IActivitytoCategoryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/filemanager/fragment/CategoryFragment$CategoryItem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isVisible:Z

.field private mActivity:Landroid/app/Activity;

.field private mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field private mCategoryFragmentListener:Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;

.field private mContext:Landroid/content/Context;

.field private mExternalName:Landroid/widget/TextView;

.field private mExternalStoContainer:Landroid/view/View;

.field private mFocusView:Landroid/view/View;

.field protected mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

.field private mPhoneImage:Landroid/widget/ImageView;

.field private mPhoneName:Landroid/widget/TextView;

.field private mPhoneStoContainer:Landroid/view/View;

.field private mSDImage:Landroid/widget/ImageView;

.field private mSDName:Landroid/widget/TextView;

.field private mSDStoContainer:Landroid/view/View;

.field private phoneFocusListener:Landroid/view/View$OnFocusChangeListener;

.field private rootView:Landroid/view/View;

.field private sdCardFocusListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;-><init>()V

    .line 79
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->isVisible:Z

    .line 212
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$1;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment$1;-><init>(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->phoneFocusListener:Landroid/view/View$OnFocusChangeListener;

    .line 228
    new-instance v0, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment$2;-><init>(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)V

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->sdCardFocusListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/jrdcom/filemanager/fragment/CategoryFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mFocusView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$300(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDImage:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/jrdcom/filemanager/fragment/CategoryFragment;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDName:Landroid/widget/TextView;

    return-object p0
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 174
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    .line 177
    const v0, 0x7f080115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneStoContainer:Landroid/view/View;

    .line 178
    const v0, 0x7f080143

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDStoContainer:Landroid/view/View;

    .line 179
    const v0, 0x7f08007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mExternalStoContainer:Landroid/view/View;

    .line 181
    const v0, 0x7f080113

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneName:Landroid/widget/TextView;

    .line 182
    const v1, 0x7f080141

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDName:Landroid/widget/TextView;

    .line 183
    const v1, 0x7f08007a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mExternalName:Landroid/widget/TextView;

    .line 185
    const v1, 0x7f080112

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneImage:Landroid/widget/ImageView;

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneName:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f080140

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDImage:Landroid/widget/ImageView;

    .line 189
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneStoContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDStoContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mExternalStoContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneStoContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->phoneFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDStoContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->sdCardFocusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 196
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->initVisible()V

    .line 198
    return-void
.end method

.method private initVisible()V
    .locals 3

    .line 247
    iget-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->isVisible:Z

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->setContentInvisible()V

    .line 249
    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPhoneStorageZero()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneStoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneStoContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mMountManager:Lcom/jrdcom/filemanager/manager/MountManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/manager/MountManager;->isSDCardMounted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 262
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDStoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDStoContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_4
    :goto_1
    return-void
.end method

.method private onClickItem(I)V
    .locals 4

    .line 100
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v3, 0x4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    if-eq p1, v1, :cond_0

    .line 124
    return-void

    .line 121
    :cond_0
    sput v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 122
    goto :goto_0

    .line 118
    :cond_1
    sput v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 119
    goto :goto_0

    .line 115
    :cond_2
    sput v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 116
    goto :goto_0

    .line 111
    :cond_3
    sput v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 112
    goto :goto_0

    .line 108
    :cond_4
    sput v3, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 109
    goto :goto_0

    .line 105
    :cond_5
    sput v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 106
    goto :goto_0

    .line 102
    :cond_6
    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    .line 103
    nop

    .line 127
    :goto_0
    iget-object v3, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSupportPrivacyMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-ne p1, v1, :cond_7

    .line 129
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 130
    const-string v0, "com.jrdcom.filemanager.action.SAFEBOX"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v0, "isFirstEnter"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->startActivity(Landroid/content/Intent;)V

    .line 133
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "private_mode_num"

    invoke-static {p1, v1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordCountNumForFA(Landroid/content/Context;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 134
    goto :goto_1

    .line 135
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;

    invoke-interface {p1}, Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;->updateCategoryNormalBarView()V

    .line 136
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;

    invoke-interface {p1, v0}, Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;->switchContentByViewMode(Z)V

    .line 138
    :goto_1
    return-void
.end method


# virtual methods
.method protected changeViewLayout(Ljava/lang/String;)V
    .locals 0

    .line 273
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->changeViewLayout(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateNewCategoryFragment()V

    .line 275
    return-void
.end method

.method public disableCategoryEvent(Z)V
    .locals 0

    .line 368
    return-void
.end method

.method public dismissSafeDialog()V
    .locals 0

    .line 408
    return-void
.end method

.method public onChangeMainlayout()V
    .locals 0

    .line 420
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 143
    iget-object p3, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mContext:Landroid/content/Context;

    if-nez p3, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iput-object p3, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mContext:Landroid/content/Context;

    .line 145
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iput-object p3, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mActivity:Landroid/app/Activity;

    .line 147
    :try_start_0
    instance-of v0, p3, Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;

    if-eqz v0, :cond_0

    .line 148
    check-cast p3, Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;

    iput-object p3, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mCategoryFragmentListener:Lcom/jrdcom/filemanager/listener/CategoryFragmentListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    goto :goto_0

    .line 150
    :catch_0
    move-exception p1

    .line 151
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "must implement CategoryFragmentListener"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 155
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->rootView:Landroid/view/View;

    if-eqz p3, :cond_3

    .line 156
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 157
    if-eqz p1, :cond_2

    .line 158
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->rootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 160
    :cond_2
    goto :goto_2

    .line 162
    :cond_3
    sget-boolean p3, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    .line 163
    const p3, 0x7f0b003f

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->rootView:Landroid/view/View;

    goto :goto_1

    .line 165
    :cond_4
    const p3, 0x7f0b003e

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->rootView:Landroid/view/View;

    .line 168
    :goto_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->initView(Landroid/view/View;)V

    .line 170
    :goto_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 293
    invoke-super {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onDestroy()V

    .line 295
    return-void
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p2}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->onClickItem(I)V

    .line 92
    return-void
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

    .line 96
    invoke-direct {p0, p3}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->onClickItem(I)V

    .line 97
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 426
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onMultiWindowModeChanged(Z)V

    .line 427
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-boolean p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->isInMultiWindowMode:Z

    .line 428
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->onChangeMainlayout()V

    .line 429
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 279
    invoke-super {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onPause()V

    .line 280
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mFocusView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-eqz v1, :cond_1

    .line 281
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneStoContainer:Landroid/view/View;

    if-ne v0, v2, :cond_0

    .line 282
    const/4 v0, 0x0

    iput v0, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCategorySelectId:I

    goto :goto_0

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDStoContainer:Landroid/view/View;

    if-ne v0, v2, :cond_1

    .line 284
    const/4 v0, 0x1

    iput v0, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCategorySelectId:I

    .line 288
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .line 372
    invoke-super {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onResume()V

    .line 373
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 375
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mMenuBar:Landroid/widget/MenuBar;

    sget v4, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    invoke-virtual {v0, v3, v4, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    goto :goto_0

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1

    .line 380
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mMenuBar:Landroid/widget/MenuBar;

    const v4, 0x7f0c002f

    sget v5, Lcom/jrdcom/filemanager/utils/CommonUtils;->SURE_BTN_TEXT_RES_ID:I

    invoke-virtual {v0, v4, v5, v3, v1}, Landroid/widget/MenuBar;->updateMenuBar(IIILjava/util/List;)V

    .line 387
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mFocusView:Landroid/view/View;

    if-nez v0, :cond_3

    .line 388
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCategorySelectId:I

    if-nez v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneStoContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mFocusView:Landroid/view/View;

    goto :goto_1

    .line 390
    :cond_2
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCategorySelectId:I

    if-ne v0, v2, :cond_3

    .line 391
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDStoContainer:Landroid/view/View;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mFocusView:Landroid/view/View;

    .line 394
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mFocusView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 395
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 399
    :cond_4
    return-void
.end method

.method public onScannerFinished()V
    .locals 0

    .line 364
    return-void
.end method

.method public onScannerStarted()V
    .locals 0

    .line 360
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 354
    invoke-super {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onStop()V

    .line 356
    return-void
.end method

.method public refreshCategory()V
    .locals 0

    .line 349
    return-void
.end method

.method public setContentInvisible()V
    .locals 2

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->isVisible:Z

    .line 203
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mPhoneStoContainer:Landroid/view/View;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/CategoryFragment;->mSDStoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_1
    return-void
.end method
