.class public Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/utils/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFileType"
.end annotation


# instance fields
.field public final fileType:I

.field public final mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput p1, p0, Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;->fileType:I

    .line 127
    iput-object p2, p0, Lcom/jrdcom/filemanager/utils/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 128
    return-void
.end method
