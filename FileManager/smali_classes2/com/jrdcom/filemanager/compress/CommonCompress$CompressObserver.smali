.class public interface abstract Lcom/jrdcom/filemanager/compress/CommonCompress$CompressObserver;
.super Ljava/lang/Object;
.source "CommonCompress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jrdcom/filemanager/compress/CommonCompress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompressObserver"
.end annotation


# virtual methods
.method public abstract onArchiveComplete(Ljava/io/File;II)V
.end method

.method public abstract onUnArchiveComplete(Ljava/io/File;II)V
.end method
