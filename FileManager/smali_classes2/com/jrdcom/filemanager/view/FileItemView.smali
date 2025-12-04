.class public Lcom/jrdcom/filemanager/view/FileItemView;
.super Ljava/lang/Object;
.source "FileItemView.java"


# instance fields
.field private bottomLayout:Landroid/widget/LinearLayout;

.field private gridMesLayout:Landroid/widget/LinearLayout;

.field private imageFrameLayout:Landroid/widget/FrameLayout;

.field private lineview:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mIcon:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mShowIcon:Landroid/widget/ImageView;

.field private mSize:Landroid/widget/TextView;

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mTime:Landroid/widget/TextView;

.field private mesbackLayout:Landroid/widget/LinearLayout;

.field private moreMenu:Landroid/widget/ImageView;

.field private privateIcon:Landroid/widget/ImageView;

.field private rootView:Landroid/view/View;

.field private selectedIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/CheckBox;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 83
    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mName:Landroid/widget/TextView;

    .line 84
    iput-object p3, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mTime:Landroid/widget/TextView;

    .line 85
    iput-object p4, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mSize:Landroid/widget/TextView;

    .line 86
    iput-object p5, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mIcon:Landroid/widget/ImageView;

    .line 87
    iput-object p6, p0, Lcom/jrdcom/filemanager/view/FileItemView;->moreMenu:Landroid/widget/ImageView;

    .line 88
    iput-object p7, p0, Lcom/jrdcom/filemanager/view/FileItemView;->lineview:Landroid/widget/TextView;

    .line 89
    iput-object p8, p0, Lcom/jrdcom/filemanager/view/FileItemView;->privateIcon:Landroid/widget/ImageView;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/CheckBox;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mName:Landroid/widget/TextView;

    .line 54
    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 55
    iput-object p3, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mIcon:Landroid/widget/ImageView;

    .line 56
    iput-object p4, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mShowIcon:Landroid/widget/ImageView;

    .line 57
    iput-object p7, p0, Lcom/jrdcom/filemanager/view/FileItemView;->moreMenu:Landroid/widget/ImageView;

    .line 58
    iput-object p5, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mTime:Landroid/widget/TextView;

    .line 59
    iput-object p6, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mSize:Landroid/widget/TextView;

    .line 60
    iput-object p8, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mesbackLayout:Landroid/widget/LinearLayout;

    .line 61
    iput-object p9, p0, Lcom/jrdcom/filemanager/view/FileItemView;->gridMesLayout:Landroid/widget/LinearLayout;

    .line 62
    iput-object p10, p0, Lcom/jrdcom/filemanager/view/FileItemView;->bottomLayout:Landroid/widget/LinearLayout;

    .line 63
    iput-object p11, p0, Lcom/jrdcom/filemanager/view/FileItemView;->lineview:Landroid/widget/TextView;

    .line 64
    iput-object p12, p0, Lcom/jrdcom/filemanager/view/FileItemView;->privateIcon:Landroid/widget/ImageView;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mName:Landroid/widget/TextView;

    .line 43
    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mTime:Landroid/widget/TextView;

    .line 44
    iput-object p3, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mSize:Landroid/widget/TextView;

    .line 45
    iput-object p4, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mIcon:Landroid/widget/ImageView;

    .line 46
    iput-object p5, p0, Lcom/jrdcom/filemanager/view/FileItemView;->moreMenu:Landroid/widget/ImageView;

    .line 47
    iput-object p6, p0, Lcom/jrdcom/filemanager/view/FileItemView;->lineview:Landroid/widget/TextView;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mName:Landroid/widget/TextView;

    .line 71
    iput-object p2, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mTime:Landroid/widget/TextView;

    .line 72
    iput-object p3, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mSize:Landroid/widget/TextView;

    .line 73
    iput-object p4, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mIcon:Landroid/widget/ImageView;

    .line 74
    iput-object p5, p0, Lcom/jrdcom/filemanager/view/FileItemView;->moreMenu:Landroid/widget/ImageView;

    .line 75
    iput-object p6, p0, Lcom/jrdcom/filemanager/view/FileItemView;->lineview:Landroid/widget/TextView;

    .line 76
    iput-object p7, p0, Lcom/jrdcom/filemanager/view/FileItemView;->selectedIcon:Landroid/widget/ImageView;

    .line 77
    iput-object p8, p0, Lcom/jrdcom/filemanager/view/FileItemView;->privateIcon:Landroid/widget/ImageView;

    .line 78
    return-void
.end method


# virtual methods
.method public getBottomLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->bottomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getGridMesLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->gridMesLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getImageFrameLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->imageFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLineview()Landroid/widget/TextView;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->lineview:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMesbackLayout()Landroid/widget/LinearLayout;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mesbackLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getMoreMenu()Landroid/widget/ImageView;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->moreMenu:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getName()Landroid/widget/TextView;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrivateIcon()Landroid/widget/ImageView;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->privateIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSelectedIcon()Landroid/widget/ImageView;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->selectedIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getShowIcon()Landroid/widget/ImageView;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mShowIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSize()Landroid/widget/TextView;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mSize:Landroid/widget/TextView;

    return-object v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getTime()Landroid/widget/TextView;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mTime:Landroid/widget/TextView;

    return-object v0
.end method

.method public setBottomLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->bottomLayout:Landroid/widget/LinearLayout;

    .line 210
    return-void
.end method

.method public setCheckBox(Landroid/widget/CheckBox;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 98
    return-void
.end method

.method public setGridMesLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->gridMesLayout:Landroid/widget/LinearLayout;

    .line 202
    return-void
.end method

.method public setIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mIcon:Landroid/widget/ImageView;

    .line 146
    return-void
.end method

.method public setImageFrameLayout(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->imageFrameLayout:Landroid/widget/FrameLayout;

    .line 114
    return-void
.end method

.method public setLineview(Landroid/widget/TextView;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->lineview:Landroid/widget/TextView;

    .line 218
    return-void
.end method

.method public setMesbackLayout(Landroid/widget/LinearLayout;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mesbackLayout:Landroid/widget/LinearLayout;

    .line 194
    return-void
.end method

.method public setMoreMenu(Landroid/widget/ImageView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->moreMenu:Landroid/widget/ImageView;

    .line 182
    return-void
.end method

.method public setName(Landroid/widget/ImageView;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->selectedIcon:Landroid/widget/ImageView;

    .line 106
    return-void
.end method

.method public setName(Landroid/widget/TextView;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mName:Landroid/widget/TextView;

    .line 122
    return-void
.end method

.method public setPrivateIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->privateIcon:Landroid/widget/ImageView;

    .line 154
    return-void
.end method

.method public setShowIcon(Landroid/widget/ImageView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mShowIcon:Landroid/widget/ImageView;

    .line 162
    return-void
.end method

.method public setSize(Landroid/widget/TextView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mSize:Landroid/widget/TextView;

    .line 138
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mThumbnail:Landroid/graphics/Bitmap;

    .line 186
    return-void
.end method

.method public setTime(Landroid/widget/TextView;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/jrdcom/filemanager/view/FileItemView;->mTime:Landroid/widget/TextView;

    .line 126
    return-void
.end method
