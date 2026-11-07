.class public Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;
.super Ljava/lang/Object;
.source "FixCRLF.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/FixCRLF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OneLiner"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CTRLZ:C = '\u001a'

.field private static final INBUFLEN:I = 0x2000

.field private static final LINEBUFLEN:I = 0xc8

.field private static final LOOKING:I = 0x1

.field private static final NOTJAVA:I = 0x0

.field private static final UNDEF:I = -0x1


# instance fields
.field private eofStr:Ljava/lang/StringBuffer;

.field private eolStr:Ljava/lang/StringBuffer;

.field private line:Ljava/lang/StringBuffer;

.field private reachedEof:Z

.field private reader:Ljava/io/BufferedReader;

.field private srcFile:Ljava/io/File;

.field private state:I

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/FixCRLF;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/FixCRLF;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 420
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->this$0:Lorg/apache/tools/ant/taskdefs/FixCRLF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->access$000(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Lorg/apache/tools/ant/filters/FixCrLfFilter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/filters/FixCrLfFilter;->getJavafiles()Z

    move-result v0

    iput v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->state:I

    .line 406
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    .line 407
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eofStr:Ljava/lang/StringBuffer;

    .line 410
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 411
    iput-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reachedEof:Z

    .line 421
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->srcFile:Ljava/io/File;

    .line 423
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 424
    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->access$100(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    goto :goto_0

    .line 425
    :cond_0
    new-instance v2, Ljava/io/InputStreamReader;

    .line 426
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->access$100(Lorg/apache/tools/ant/taskdefs/FixCRLF;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    .line 428
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->nextLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 430
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, ": "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 431
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p1

    invoke-direct {v1, p2, v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    .line 582
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_0
    return-void
.end method

.method public getEofStr()Ljava/lang/String;
    .locals 2

    .line 532
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eofStr:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 540
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->state:I

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reachedEof:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner$BufferLine;-><init>(Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->nextLine()V

    return-object v0

    .line 568
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "OneLiner"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected nextLine()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 444
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    .line 445
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    .line 448
    :try_start_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    :goto_0
    const/16 v1, 0xd

    const/4 v2, -0x1

    const/16 v3, 0xa

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    .line 450
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    .line 454
    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 456
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reachedEof:Z

    return-void

    :cond_1
    int-to-char v0, v0

    const/4 v5, 0x0

    if-eq v0, v3, :cond_6

    if-eq v0, v1, :cond_2

    move v6, v5

    goto :goto_2

    .line 465
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 466
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/BufferedReader;->mark(I)V

    .line 467
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    if-eq v0, v2, :cond_7

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_3

    .line 487
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    goto :goto_1

    .line 470
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    int-to-char v0, v0

    if-ne v0, v3, :cond_4

    .line 473
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x3

    goto :goto_2

    .line 475
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    goto :goto_1

    .line 480
    :cond_5
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 494
    :cond_6
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eolStr:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    :goto_1
    move v6, v4

    :goto_2
    if-nez v6, :cond_a

    .line 503
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    if-ltz v0, :cond_8

    .line 504
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_8

    goto :goto_3

    .line 507
    :cond_8
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_a

    .line 510
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->eofStr:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-gez v0, :cond_9

    .line 512
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 513
    iput-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->reachedEof:Z

    goto :goto_4

    .line 515
    :cond_9
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->line:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_4
    return-void

    :catch_0
    move-exception v0

    .line 522
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->srcFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->this$0:Lorg/apache/tools/ant/taskdefs/FixCRLF;

    .line 523
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/FixCRLF;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1
.end method

.method public setState(I)V
    .locals 0

    .line 548
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/FixCRLF$OneLiner;->state:I

    return-void
.end method
