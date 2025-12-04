.class Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;
.super Landroid/os/Handler;
.source "FileBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/activity/FileBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 169
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 170
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_10

    if-eq p1, v0, :cond_c

    const/4 v2, 0x4

    if-eq p1, v2, :cond_b

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    goto/16 :goto_3

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mTagMode:Ljava/lang/String;

    iget-object v2, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v2, v2, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1, v2}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isPathMultiScreenChanage(Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 219
    sput v0, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    .line 220
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget-object v1, p1, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentPath:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 221
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->searchStatusChanageScreen()V

    goto :goto_0

    .line 223
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 224
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->editStatusChanageScreen()V

    goto :goto_0

    .line 225
    :cond_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCopyNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 226
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->normalStatusChanageScreen()V

    .line 228
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateBarView()V

    goto/16 :goto_3

    .line 229
    :cond_5
    sget p1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    if-ltz p1, :cond_a

    .line 230
    sput v1, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentMode:I

    .line 231
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mActivityListener:Lcom/jrdcom/filemanager/IActivityListener;

    sget v2, Lcom/jrdcom/filemanager/manager/CategoryManager;->mCurrentCagegory:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, ""

    invoke-interface/range {v0 .. v6}, Lcom/jrdcom/filemanager/IActivityListener;->refreshAdapter(Ljava/lang/String;IIIZZ)Z

    .line 232
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isSearchStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 233
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->searchStatusChanageScreen()V

    goto :goto_1

    .line 234
    :cond_6
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isEditStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 235
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->editStatusChanageScreen()V

    goto :goto_1

    .line 236
    :cond_7
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCopyNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 237
    :cond_8
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->normalStatusChanageScreen()V

    .line 239
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateBarView()V

    goto/16 :goto_3

    .line 240
    :cond_a
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCurrentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, v0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mCategoryFragment:Lcom/jrdcom/filemanager/fragment/CategoryFragment;

    if-ne p1, v0, :cond_17

    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->isCopyNormalStatus(Lcom/jrdcom/filemanager/FileManagerApplication;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 241
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->normalStatusChanageScreen()V

    .line 242
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->updateCategoryNormalBar()V

    goto/16 :goto_3

    .line 215
    :cond_b
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showNoAvailableStorageDialog()V

    .line 216
    goto/16 :goto_3

    .line 195
    :cond_c
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_item:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->access$000(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    .line 199
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    if-eqz p1, :cond_d

    .line 200
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_path_icon:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 202
    :cond_d
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_item:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    .line 203
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->home_item:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 207
    :cond_e
    sget-boolean p1, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isShowNoStorageDialog:Z

    if-nez p1, :cond_f

    .line 208
    sput-boolean v0, Lcom/jrdcom/filemanager/activity/FileBaseActivity;->isShowNoStorageDialog:Z

    .line 209
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->showNoAvailableStorageDialog()V

    .line 212
    :cond_f
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->access$100(Lcom/jrdcom/filemanager/activity/FileBrowserActivity;)V

    .line 213
    goto :goto_3

    .line 172
    :cond_10
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object p1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    if-nez p1, :cond_11

    .line 173
    return-void

    .line 175
    :cond_11
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsSortBy(Landroid/content/Context;)I

    move-result p1

    .line 177
    const-string v2, "sort_key"

    if-nez p1, :cond_12

    .line 178
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "name_sort_sta"

    invoke-static {p1, v2, v1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto :goto_2

    .line 179
    :cond_12
    if-ne p1, v1, :cond_13

    .line 180
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "time_sort_sta"

    invoke-static {p1, v2, v1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto :goto_2

    .line 181
    :cond_13
    if-ne p1, v0, :cond_14

    .line 182
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "size_sort_sta"

    invoke-static {p1, v2, v1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto :goto_2

    .line 183
    :cond_14
    const/4 v0, 0x3

    if-ne p1, v0, :cond_15

    .line 184
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v0, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v1, "type_sort_sta"

    invoke-static {p1, v2, v1, v0}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 187
    :cond_15
    :goto_2
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    invoke-static {p1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getCurrentViewMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 188
    const-string v0, "view_key"

    if-eqz p1, :cond_16

    const-string v1, "gridMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 189
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "grid_view_sta"

    invoke-static {p1, v0, v2, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    goto :goto_3

    .line 191
    :cond_16
    iget-object p1, p0, Lcom/jrdcom/filemanager/activity/FileBrowserActivity$1;->this$0:Lcom/jrdcom/filemanager/activity/FileBrowserActivity;

    iget-object v1, p1, Lcom/jrdcom/filemanager/activity/FileBrowserActivity;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    const-string v2, "list_view_sta"

    invoke-static {p1, v0, v2, v1}, Lcom/jrdcom/filemanager/utils/CommonUtils;->recordStatusEventForFA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/jrdcom/filemanager/FileManagerApplication;)V

    .line 193
    nop

    .line 246
    :cond_17
    :goto_3
    return-void
.end method
