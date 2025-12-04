.class public Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;
.super Ljava/lang/Object;
.source "CommonCompress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/compress/CommonCompress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CompressOptions"
.end annotation


# instance fields
.field public relPath:Ljava/lang/String;

.field public zipFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->zipFile:Ljava/io/File;

    .line 217
    iput-object p2, p0, Lcom/jrdcom/filemanager/compress/CommonCompress$CompressOptions;->relPath:Ljava/lang/String;

    .line 218
    return-void
.end method
