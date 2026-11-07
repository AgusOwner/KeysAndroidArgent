.class final Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;
.super Ljava/io/Reader;
.source "Concat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Concat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/io/Reader;"
    }
.end annotation


# instance fields
.field private factory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final filterBeforeConcat:Z

.field private reader:Ljava/io/Reader;

.field private readerSources:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Concat;


# direct methods
.method private constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TS;>;",
            "Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory<",
            "TS;>;Z)V"
        }
    .end annotation

    .line 359
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 p1, 0x0

    .line 353
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 360
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->readerSources:Ljava/util/Iterator;

    .line 361
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->factory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    .line 362
    iput-boolean p4, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->filterBeforeConcat:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;ZLorg/apache/tools/ant/taskdefs/Concat$1;)V
    .locals 0

    .line 352
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/util/Iterator;Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;Z)V

    return-void
.end method

.method private getReader()Ljava/io/Reader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->readerSources:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->factory:Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->readerSources:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/tools/ant/taskdefs/Concat$ReaderFactory;->getReader(Ljava/lang/Object;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 368
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->isFixLastLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/tools/ant/taskdefs/Concat$LastLineFixingReader;-><init>(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;Lorg/apache/tools/ant/taskdefs/Concat$1;)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 371
    :cond_0
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->filterBeforeConcat:Z

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    invoke-static {v0, v1}, Lorg/apache/tools/ant/taskdefs/Concat;->access$200(Lorg/apache/tools/ant/taskdefs/Concat;Ljava/io/Reader;)Ljava/io/Reader;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    .line 375
    :cond_1
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    return-object v0
.end method

.method private isFixLastLine()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$300(Lorg/apache/tools/ant/taskdefs/Concat;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->this$0:Lorg/apache/tools/ant/taskdefs/Concat;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/Concat;->access$400(Lorg/apache/tools/ant/taskdefs/Concat;)Ljava/lang/StringBuffer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextReader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->close()V

    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

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

    .line 440
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->reader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 441
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->getReader()Ljava/io/Reader;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 393
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->getReader()Ljava/io/Reader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 395
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->nextReader()V

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method public read([CII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 416
    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->getReader()Ljava/io/Reader;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_3

    .line 417
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->getReader()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p3, v1

    add-int/2addr p2, v1

    add-int/2addr v0, v1

    if-nez p3, :cond_0

    return v0

    .line 419
    :cond_2
    :goto_1
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Concat$MultiReader;->nextReader()V

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    return v2

    :cond_4
    return v0
.end method
