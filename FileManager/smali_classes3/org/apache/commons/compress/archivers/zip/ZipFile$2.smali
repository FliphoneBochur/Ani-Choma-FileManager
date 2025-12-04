.class Lorg/apache/commons/compress/archivers/zip/ZipFile$2;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1094
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    check-cast p2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$2;->compare(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)I
    .locals 10
    .param p1, "e1"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
    .param p2, "e2"    # Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 1097
    const/4 v0, 0x0

    if-ne p1, p2, :cond_0

    .line 1098
    return v0

    .line 1101
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 1102
    .local v1, "ent1":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    :goto_0
    instance-of v3, p2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    if-eqz v3, :cond_2

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;

    .line 1103
    .local v2, "ent2":Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;
    :cond_2
    const/4 v3, 0x1

    if-nez v1, :cond_3

    .line 1104
    return v3

    .line 1106
    :cond_3
    const/4 v4, -0x1

    if-nez v2, :cond_4

    .line 1107
    return v4

    .line 1109
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v5

    invoke-virtual {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile$Entry;->getOffsetEntry()Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;->access$200(Lorg/apache/commons/compress/archivers/zip/ZipFile$OffsetEntry;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 1111
    .local v5, "val":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_5

    goto :goto_1

    :cond_5
    cmp-long v0, v5, v7

    if-gez v0, :cond_6

    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    return v0
.end method
