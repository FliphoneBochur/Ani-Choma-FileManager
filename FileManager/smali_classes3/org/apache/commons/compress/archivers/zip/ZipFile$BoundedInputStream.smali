.class Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;
.super Ljava/io/InputStream;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/zip/ZipFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoundedInputStream"
.end annotation


# instance fields
.field private addDummyByte:Z

.field private loc:J

.field private remaining:J

.field final synthetic this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;


# direct methods
.method constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipFile;JJ)V
    .locals 0
    .param p2, "start"    # J
    .param p4, "remaining"    # J

    .line 1017
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1015
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 1018
    iput-wide p4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    .line 1019
    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    .line 1020
    return-void
.end method


# virtual methods
.method addDummy()V
    .locals 1

    .line 1072
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 1073
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1024
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 1025
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    if-eqz v0, :cond_0

    .line 1026
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 1027
    return v0

    .line 1029
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1031
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v0

    monitor-enter v0

    .line 1032
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    iget-wide v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1033
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->read()I

    move-result v1

    monitor-exit v0

    return v1

    .line 1034
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gtz v2, :cond_1

    .line 1040
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    if-eqz v0, :cond_0

    .line 1041
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->addDummyByte:Z

    .line 1042
    aput-byte v3, p1, p2

    .line 1043
    const/4 v0, 0x1

    return v0

    .line 1045
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 1048
    :cond_1
    if-gtz p3, :cond_2

    .line 1049
    return v3

    .line 1052
    :cond_2
    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_3

    .line 1053
    long-to-int p3, v0

    .line 1055
    :cond_3
    const/4 v0, -0x1

    .line 1056
    .local v0, "ret":I
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v1

    monitor-enter v1

    .line 1057
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v2

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1058
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->this$0:Lorg/apache/commons/compress/archivers/zip/ZipFile;

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipFile;->access$600(Lorg/apache/commons/compress/archivers/zip/ZipFile;)Ljava/io/RandomAccessFile;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    move v0, v2

    .line 1059
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    if-lez v0, :cond_4

    .line 1061
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->loc:J

    .line 1062
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipFile$BoundedInputStream;->remaining:J

    .line 1064
    :cond_4
    return v0

    .line 1059
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
