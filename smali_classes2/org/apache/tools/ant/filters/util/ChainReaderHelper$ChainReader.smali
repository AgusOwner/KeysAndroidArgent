.class public Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;
.super Ljava/io/FilterReader;
.source "ChainReaderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/util/ChainReaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChainReader"
.end annotation


# instance fields
.field private cleanupLoaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/AntClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/filters/util/ChainReaderHelper;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/filters/util/ChainReaderHelper;Ljava/io/Reader;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/AntClassLoader;",
            ">;)V"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->this$0:Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    .line 58
    invoke-direct {p0, p2}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 59
    iput-object p3, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->cleanupLoaders:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/filters/util/ChainReaderHelper;Ljava/io/Reader;Ljava/util/List;Lorg/apache/tools/ant/filters/util/ChainReaderHelper$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;-><init>(Lorg/apache/tools/ant/filters/util/ChainReaderHelper;Ljava/io/Reader;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->cleanupLoaders:Ljava/util/List;

    invoke-static {v0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->access$000(Ljava/util/List;)V

    .line 69
    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 75
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 78
    throw v0
.end method

.method public readFully()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/tools/ant/filters/util/ChainReaderHelper$ChainReader;->this$0:Lorg/apache/tools/ant/filters/util/ChainReaderHelper;

    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/filters/util/ChainReaderHelper;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
