.class public Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileInfoAdapter.java"


# instance fields
.field protected mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

.field protected mCheckedFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mContext:Landroid/content/Context;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field protected final mFileInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

.field protected mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

.field protected mItemEditFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSelectPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/jrdcom/filemanager/manager/FileInfoManager;Landroid/widget/ListView;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    .line 45
    invoke-static {}, Lcom/jrdcom/filemanager/FileManagerApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/FileManagerApplication;

    iput-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mCheckedFileList:Ljava/util/List;

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mItemEditFileList:Ljava/util/List;

    .line 56
    iput-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 57
    if-eqz p2, :cond_0

    .line 58
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getShowFileList()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {}, Lcom/jrdcom/filemanager/manager/IconManager;->getInstance()Lcom/jrdcom/filemanager/manager/IconManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    .line 62
    iput-object p3, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mListView:Landroid/widget/ListView;

    .line 63
    return-void
.end method

.method private setIcon(ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;I)V
    .locals 3

    .line 229
    iget v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mSelectPosition:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 231
    :goto_0
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-virtual {v0, p3, p4, p1}, Lcom/jrdcom/filemanager/manager/IconManager;->getIcon(Lcom/jrdcom/filemanager/utils/FileInfo;IZ)I

    move-result p1

    .line 232
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object p4

    .line 233
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 234
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 236
    return-void

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    invoke-virtual {p1, p4}, Lcom/jrdcom/filemanager/manager/IconManager;->getImageCacheDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 239
    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p4

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 241
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 243
    :cond_2
    invoke-virtual {p0, p3, p2}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->loadImage(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/view/FileItemView;)V

    .line 247
    :goto_1
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->isHideFile()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 248
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 249
    :cond_3
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {p1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getPasteType()I

    move-result p1

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    .line 250
    invoke-virtual {p1, p3}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->isPasteItem(Lcom/jrdcom/filemanager/utils/FileInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 251
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    const p2, 0x3f19999a    # 0.6f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_2

    .line 253
    :cond_4
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 256
    :goto_2
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    return-object p1

    .line 145
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 157
    int-to-long v0, p1

    return-wide v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jrdcom/filemanager/utils/FileInfo;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getListView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 184
    nop

    .line 185
    if-nez p2, :cond_0

    .line 186
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/jrdcom/filemanager/utils/CommonUtils;->LIST_ITEM_RES_ID:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 187
    new-instance p3, Lcom/jrdcom/filemanager/view/FileItemView;

    const v0, 0x7f080067

    .line 188
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const v0, 0x7f080069

    .line 189
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    const v0, 0x7f080068

    .line 190
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f080066

    .line 191
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const v0, 0x7f08006b

    .line 192
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const v0, 0x7f08014d

    .line 193
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lcom/jrdcom/filemanager/view/FileItemView;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    .line 194
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/jrdcom/filemanager/view/FileItemView;

    .line 199
    :goto_0
    invoke-virtual {p0, p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getItem(I)Lcom/jrdcom/filemanager/utils/FileInfo;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getName()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->setNameText(Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 203
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v1

    .line 204
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    .line 205
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "size"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsStatus(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 220
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getMoreMenu()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 210
    :cond_1
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getMoreMenu()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getLineview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 212
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 213
    goto :goto_1

    .line 215
    :cond_2
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getMoreMenu()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 216
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getLineview()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getTime()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Lcom/jrdcom/filemanager/view/FileItemView;->getSize()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 218
    nop

    .line 223
    :goto_1
    sget v1, Lcom/jrdcom/filemanager/manager/IconManager;->LIST_ITEM:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->setIcon(ILcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;I)V

    .line 225
    :cond_3
    return-object p2
.end method

.method public getMode()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/jrdcom/filemanager/utils/SharedPreferenceUtils;->getPrefsStatus(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getPosition(Lcom/jrdcom/filemanager/utils/FileInfo;)I
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 170
    invoke-virtual {p0, p1, p2, p3}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->getListView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public isHasDrm(I)Z
    .locals 2

    .line 111
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 115
    invoke-virtual {p1}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDrmFile()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 112
    :cond_1
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    .line 119
    return v0
.end method

.method public isMode(I)Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mCurrentStatus:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected loadImage(Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/view/FileItemView;)V
    .locals 3

    .line 259
    new-instance v0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$1;-><init>(Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;Lcom/jrdcom/filemanager/view/FileItemView;Lcom/jrdcom/filemanager/utils/FileInfo;)V

    .line 269
    iget-object p2, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mIconManager:Lcom/jrdcom/filemanager/manager/IconManager;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter$2;-><init>(Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;Landroid/os/Handler;)V

    invoke-virtual {p2, v1, p1, v2}, Lcom/jrdcom/filemanager/manager/IconManager;->loadImage(Landroid/content/Context;Lcom/jrdcom/filemanager/utils/FileInfo;Lcom/jrdcom/filemanager/manager/IconManager$IconCallback;)Landroid/graphics/drawable/Drawable;

    .line 278
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoManager:Lcom/jrdcom/filemanager/manager/FileInfoManager;

    invoke-virtual {v1}, Lcom/jrdcom/filemanager/manager/FileInfoManager;->getShowFileList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    return-void
.end method

.method public setDisablePrivatefolder(Z)V
    .locals 3

    .line 67
    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jrdcom/filemanager/utils/FileInfo;

    .line 69
    invoke-virtual {v0}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Locker"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mFileInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 71
    return-void

    .line 73
    :cond_0
    goto :goto_0

    .line 75
    :cond_1
    return-void
.end method

.method protected setNameText(Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 2

    .line 346
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {}, Lcom/jrdcom/filemanager/manager/MountManager;->getInstance()Lcom/jrdcom/filemanager/manager/MountManager;

    move-result-object v0

    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jrdcom/filemanager/manager/MountManager;->isMountPoint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getShowName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p2}, Lcom/jrdcom/filemanager/utils/FileInfo;->getShowName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_0
    return-void
.end method

.method public setSelectPosition(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mSelectPosition:I

    .line 360
    invoke-virtual {p0}, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->notifyDataSetChanged()V

    .line 361
    return-void
.end method

.method public setTimeSizeText(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/jrdcom/filemanager/utils/FileInfo;)V
    .locals 5

    .line 301
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileLastModifiedTime()J

    move-result-wide v0

    .line 302
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v2, :cond_2

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 309
    const-string v3, "date_format"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const-string v2, "yyyy-MM-dd HH:mm"

    .line 313
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    .line 315
    :cond_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " HH:mm"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    goto :goto_1

    .line 318
    :catch_0
    move-exception v2

    .line 319
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 323
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v2, :cond_3

    .line 324
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    :cond_3
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_5

    .line 329
    iget-object v0, p0, Lcom/jrdcom/filemanager/adapter/FileInfoAdapter;->mApplication:Lcom/jrdcom/filemanager/FileManagerApplication;

    iget v0, v0, Lcom/jrdcom/filemanager/FileManagerApplication;->mSortType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 330
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 331
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 333
    :cond_4
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    invoke-virtual {p3}, Lcom/jrdcom/filemanager/utils/FileInfo;->getFileSizeStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 338
    :cond_5
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 339
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 342
    :goto_2
    return-void
.end method
