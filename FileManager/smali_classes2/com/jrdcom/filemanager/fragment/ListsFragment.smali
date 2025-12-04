.class public Lcom/jrdcom/filemanager/fragment/ListsFragment;
.super Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;
.source "ListsFragment.java"


# instance fields
.field private lm:Landroid/support/v7/widget/LinearLayoutManager;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->lm:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 2

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    .line 56
    const v0, 0x7f0800d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    .line 58
    const v0, 0x7f0800cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mNoSearchView:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f0800c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mNoFolderView:Landroid/widget/LinearLayout;

    .line 60
    const v0, 0x7f0800cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->noSearchText:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f0800cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mNo_messageView:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0800ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mNo_ImageView:Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mNo_messageView:Landroid/widget/TextView;

    new-instance v1, Lcom/jrdcom/filemanager/fragment/ListsFragment$1;

    invoke-direct {v1, p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment$1;-><init>(Lcom/jrdcom/filemanager/fragment/ListsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 76
    const v0, 0x7f0800e7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActions:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    .line 77
    const v0, 0x7f08009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->setPrivate_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 78
    const v0, 0x7f080093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 79
    const v0, 0x7f0800a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 80
    const v0, 0x7f080099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->delete_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 81
    const v0, 0x7f080095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 82
    const v0, 0x7f080097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 83
    const v0, 0x7f08009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 84
    const v0, 0x7f08009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->paste_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 86
    const v0, 0x7f0800e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->menuMultipleActionsLeft:Lcom/jrdcom/filemanager/view/FloatingActionsMenu;

    .line 87
    const v0, 0x7f0800a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->setPrivate_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 88
    const v0, 0x7f080094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 89
    const v0, 0x7f0800a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 90
    const v0, 0x7f08009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->delete_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 91
    const v0, 0x7f080096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 92
    const v0, 0x7f080098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 93
    const v0, 0x7f08009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 94
    const v0, 0x7f08009e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/view/FloatingActionButton;

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->paste_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    .line 96
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->updateListScrollBarStyle()V

    .line 98
    return-void
.end method


# virtual methods
.method public beforeCreateFolderDo()V
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setCanSetFocus(Z)V

    .line 348
    :cond_0
    return-void
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 122
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onActivityCreated mAdapter: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "check@ListsFragment"

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance p1, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, v1, Lcom/jrdcom/filemanager/FileManagerApplication;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    iget-object v2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-direct {p1, v0, v1, v2}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;-><init>(Landroid/content/Context;Lcom/jrdcom/filemanager/manager/FileInfoManager;Lcom/jrdcom/filemanager/view/LoopRecyclerView;)V

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 127
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsViewBy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    .line 128
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->getGridColumn(Lcom/jrdcom/filemanager/FileManagerApplication;)I

    move-result p1

    .line 129
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v1, "gridMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    if-nez p1, :cond_1

    .line 136
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 139
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1, p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setOnItemClickListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemClickListener;)V

    .line 140
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {p1, p0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setOnItemFocusChangeListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;)V

    .line 141
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->setPrivate_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->archives_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->share_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->delete_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->copy_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->cut_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->extract_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->paste_btn:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->setPrivate_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->archives_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->share_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->delete_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->copy_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->cut_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->extract_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->paste_btnLeft:Lcom/jrdcom/filemanager/view/FloatingActionButton;

    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->lm:Landroid/support/v7/widget/LinearLayoutManager;

    .line 159
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/ListsFragment$2;

    invoke-direct {v0, p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment$2;-><init>(Lcom/jrdcom/filemanager/fragment/ListsFragment;)V

    invoke-virtual {p1, v0}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 173
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 35
    iget-object p3, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->rootView:Landroid/view/View;

    if-eqz p3, :cond_1

    .line 36
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->rootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    :cond_0
    goto :goto_1

    .line 42
    :cond_1
    sget-boolean p3, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    .line 43
    const p3, 0x7f0b0041

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->rootView:Landroid/view/View;

    goto :goto_0

    .line 46
    :cond_2
    const p3, 0x7f0b0040

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->rootView:Landroid/view/View;

    .line 48
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->rootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->initView(Landroid/view/View;)V

    .line 50
    :goto_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 107
    invoke-super {p0}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onDestroy()V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy mAdapter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "check@ListsFragment"

    invoke-static {v1, v0}, Lcom/jrdcom/filemanager/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    invoke-virtual {v0}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->clearList()V

    .line 111
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setPrePosition(I)V

    .line 113
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/adapter/FileShowAdapter;->setOnItemFocusChangeListener(Lcom/jrdcom/filemanager/adapter/FileShowAdapter$OnItemFocusChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 116
    iput-object v1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mAdapter:Lcom/jrdcom/filemanager/adapter/FileShowAdapter;

    .line 118
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    return-void
.end method

.method protected restoreListPosition()V
    .locals 0

    .line 179
    return-void
.end method

.method public scrollChange(Landroid/support/v7/widget/RecyclerView;)V
    .locals 13

    .line 199
    nop

    .line 201
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mViewMode:Ljava/lang/String;

    const-string v1, "listMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 202
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    .line 203
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 204
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 205
    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->getItemCount()I

    move-result v3

    .line 207
    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_0

    .line 208
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 209
    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 214
    :cond_0
    if-nez v2, :cond_1

    .line 215
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    .line 216
    if-eqz p1, :cond_1

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 220
    :cond_1
    goto/16 :goto_8

    .line 221
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/GridLayoutManager;

    .line 222
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v0

    .line 223
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    .line 224
    invoke-virtual {p1}, Landroid/support/v7/widget/GridLayoutManager;->getItemCount()I

    move-result v3

    .line 227
    sget-boolean v4, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v4, :cond_3

    .line 228
    rem-int/lit8 v4, v3, 0x2

    goto :goto_0

    .line 231
    :cond_3
    rem-int/lit8 v4, v3, 0x3

    .line 233
    :goto_0
    iget v5, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    invoke-virtual {p1, v5}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    .line 234
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v6

    .line 235
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v7

    .line 237
    iget-object v8, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {v8}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getDirection()I

    move-result v8

    const/16 v9, 0x11

    const/4 v10, 0x0

    if-eq v8, v9, :cond_22

    const/16 v9, 0x21

    const/4 v11, 0x0

    const/4 v12, 0x2

    if-eq v8, v9, :cond_15

    const/16 v0, 0x42

    if-eq v8, v0, :cond_11

    const/16 v0, 0x82

    if-eq v8, v0, :cond_4

    goto/16 :goto_8

    .line 273
    :cond_4
    if-nez v2, :cond_26

    .line 276
    sget-boolean v0, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v0, :cond_9

    .line 277
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    add-int/lit8 v7, v3, -0x1

    if-ne v0, v7, :cond_7

    .line 278
    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v4, -0x1

    .line 279
    :goto_1
    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 280
    :cond_6
    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    sub-int/2addr v3, v12

    if-ne v0, v3, :cond_6

    .line 281
    if-nez v4, :cond_8

    move v4, v11

    .line 282
    :cond_8
    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 283
    goto :goto_4

    .line 286
    :cond_9
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    add-int/lit8 v7, v3, -0x1

    if-ne v0, v7, :cond_b

    .line 287
    if-nez v4, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v12, v4, -0x1

    .line 288
    :goto_2
    add-int/2addr v2, v12

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 289
    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    add-int/lit8 v7, v3, -0x2

    if-ne v0, v7, :cond_e

    .line 290
    if-ne v4, v12, :cond_c

    goto :goto_3

    :cond_c
    add-int/lit8 v11, v4, 0x1

    .line 291
    :goto_3
    add-int/2addr v2, v11

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 292
    :cond_d
    goto :goto_4

    :cond_e
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    add-int/lit8 v3, v3, -0x3

    if-ne v0, v3, :cond_d

    .line 293
    add-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 296
    :goto_4
    if-eqz v10, :cond_f

    .line 297
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_8

    .line 298
    :cond_f
    if-eqz v5, :cond_10

    .line 299
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_8

    .line 300
    :cond_10
    if-eqz v6, :cond_26

    .line 301
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_8

    .line 322
    :cond_11
    if-nez v2, :cond_12

    .line 323
    invoke-virtual {p1, v11}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 326
    :cond_12
    if-eqz v10, :cond_13

    .line 327
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_8

    .line 328
    :cond_13
    if-eqz v5, :cond_14

    .line 329
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_8

    .line 330
    :cond_14
    if-eqz v6, :cond_26

    .line 331
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_8

    .line 239
    :cond_15
    add-int/lit8 v2, v3, -0x1

    if-ne v0, v2, :cond_26

    .line 242
    sget-boolean v2, Lcom/jrdcom/filemanager/utils/CommonUtils;->IS_ELDER_STATUS:Z

    if-eqz v2, :cond_1a

    .line 243
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    if-nez v0, :cond_18

    .line 244
    if-nez v4, :cond_16

    move v1, v12

    .line 245
    :cond_16
    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 246
    :cond_17
    goto :goto_7

    :cond_18
    iget v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    if-ne v0, v1, :cond_17

    .line 247
    if-ne v4, v1, :cond_19

    move v1, v12

    .line 248
    :cond_19
    sub-int/2addr v3, v1

    invoke-virtual {p1, v3}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 249
    goto :goto_7

    .line 252
    :cond_1a
    iget v2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    if-nez v2, :cond_1c

    .line 253
    if-nez v4, :cond_1b

    goto :goto_5

    :cond_1b
    add-int/lit8 v12, v4, -0x1

    .line 254
    :goto_5
    sub-int/2addr v0, v12

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 255
    goto :goto_7

    :cond_1c
    iget v2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    if-ne v2, v1, :cond_1f

    .line 256
    if-ne v4, v12, :cond_1d

    goto :goto_6

    :cond_1d
    add-int/lit8 v11, v4, 0x1

    .line 257
    :goto_6
    sub-int/2addr v0, v11

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 258
    :cond_1e
    goto :goto_7

    :cond_1f
    iget v1, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mCurrentPosition:I

    if-ne v1, v12, :cond_1e

    .line 259
    sub-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 262
    :goto_7
    if-eqz v10, :cond_20

    .line 263
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    .line 264
    :cond_20
    if-eqz v5, :cond_21

    .line 265
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    .line 266
    :cond_21
    if-eqz v7, :cond_26

    .line 267
    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    .line 308
    :cond_22
    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_23

    .line 309
    invoke-virtual {p1, v3}, Landroid/support/v7/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v10

    .line 312
    :cond_23
    if-eqz v10, :cond_24

    .line 313
    invoke-virtual {v10}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    .line 314
    :cond_24
    if-eqz v5, :cond_25

    .line 315
    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    goto :goto_8

    .line 316
    :cond_25
    if-eqz v6, :cond_26

    .line 317
    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 341
    :cond_26
    :goto_8
    return-void
.end method

.method public setViewPostion(IZ)V
    .locals 3

    .line 356
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->lm:Landroid/support/v7/widget/LinearLayoutManager;

    if-nez p2, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mRecyclerView:Lcom/jrdcom/filemanager/view/LoopRecyclerView;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/LoopRecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 361
    iget-object p2, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mTaskResultHandler:Landroid/os/Handler;

    new-instance v0, Lcom/jrdcom/filemanager/fragment/ListsFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/jrdcom/filemanager/fragment/ListsFragment$3;-><init>(Lcom/jrdcom/filemanager/fragment/ListsFragment;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception p1

    .line 377
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    :goto_0
    return-void
.end method

.method protected switchToEditView(IIZ)V
    .locals 0

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->switchToEditView(IIZ)V

    .line 186
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/fragment/ListsFragment;->switchToEditView()V

    .line 187
    return-void
.end method

.method public updateActionMode(I)V
    .locals 1

    .line 191
    invoke-super {p0, p1}, Lcom/jrdcom/filemanager/fragment/FileBrowserFragment;->updateActionMode(I)V

    .line 192
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iput p1, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    .line 193
    iget-object v0, p0, Lcom/jrdcom/filemanager/fragment/ListsFragment;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {v0, p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->changePrefsStatus(Landroid/content/Context;I)V

    .line 194
    return-void
.end method
