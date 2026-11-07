.class public Lorg/apache/tools/ant/util/RetryHandler;
.super Ljava/lang/Object;
.source "RetryHandler.java"


# instance fields
.field private retriesAllowed:I

.field private task:Lorg/apache/tools/ant/Task;


# direct methods
.method public constructor <init>(ILorg/apache/tools/ant/Task;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    .line 43
    iput-object p2, p0, Lorg/apache/tools/ant/util/RetryHandler;->task:Lorg/apache/tools/ant/Task;

    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/tools/ant/util/Retryable;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/apache/tools/ant/util/Retryable;->execute()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 61
    iget v3, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    const-string v4, ": IO error ("

    const-string v5, "try #"

    if-le v0, v3, :cond_1

    iget v3, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    const/4 v6, -0x1

    if-gt v3, v6, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/util/RetryHandler;->task:Lorg/apache/tools/ant/Task;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "), number of maximum retries reached ("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lorg/apache/tools/ant/util/RetryHandler;->retriesAllowed:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "), giving up"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    .line 65
    throw v1

    .line 67
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/apache/tools/ant/util/RetryHandler;->task:Lorg/apache/tools/ant/Task;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), retrying"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lorg/apache/tools/ant/Task;->log(Ljava/lang/String;I)V

    goto :goto_0
.end method
