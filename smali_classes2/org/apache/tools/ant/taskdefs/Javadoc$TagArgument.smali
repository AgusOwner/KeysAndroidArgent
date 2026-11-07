.class public Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;
.super Lorg/apache/tools/ant/types/FileSet;
.source "Javadoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Javadoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TagArgument"
.end annotation


# instance fields
.field private enabled:Z

.field private name:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/Javadoc;)V
    .locals 0

    .line 1449
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->this$0:Lorg/apache/tools/ant/taskdefs/Javadoc;

    invoke-direct {p0}, Lorg/apache/tools/ant/types/FileSet;-><init>()V

    const/4 p1, 0x0

    .line 1438
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1440
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    const-string p1, "a"

    .line 1446
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getParameter()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1555
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1558
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const-string v2, "X"

    const-string v3, ":"

    if-eqz v0, :cond_1

    .line 1559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v4, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1560
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1562
    :cond_1
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    if-eqz v0, :cond_3

    const-string v0, "a"

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1565
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    return-object v0

    .line 1563
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1556
    :cond_5
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "No name specified for custom tag."

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1545
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->enabled:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1460
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->name:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 1480
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1482
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [Z

    .line 1489
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ","

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    move v3, p1

    move v4, v3

    .line 1490
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1491
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "all"

    .line 1492
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    .line 1494
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v4

    const-string v5, "Repeated tag scope element: all"

    invoke-virtual {v4, v5, v7}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    :cond_0
    move v4, v8

    goto :goto_0

    :cond_1
    move v3, p1

    .line 1500
    :goto_1
    sget-object v6, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_3

    .line 1501
    sget-object v6, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1505
    :cond_3
    :goto_2
    sget-object v6, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    array-length v6, v6

    if-eq v3, v6, :cond_5

    .line 1509
    aget-boolean v6, v1, v3

    if-eqz v6, :cond_4

    .line 1510
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Repeated tag scope element: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 1513
    :cond_4
    aput-boolean v8, v1, v3

    move v3, v8

    goto :goto_0

    .line 1506
    :cond_5
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Unrecognised scope element: %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :cond_6
    if-eqz v3, :cond_8

    if-nez v4, :cond_7

    goto :goto_3

    .line 1519
    :cond_7
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Mixture of \"all\" and other scope elements in tag parameter."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_3
    if-nez v3, :cond_a

    if-eqz v4, :cond_9

    goto :goto_4

    .line 1523
    :cond_9
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "No scope elements specified in tag parameter."

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_4
    if-eqz v4, :cond_b

    const-string p1, "a"

    .line 1527
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    goto :goto_6

    .line 1529
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, p1

    :goto_5
    if-ge v3, v0, :cond_d

    .line 1531
    aget-boolean v4, v1, v3

    if-eqz v4, :cond_c

    .line 1532
    sget-object v4, Lorg/apache/tools/ant/taskdefs/Javadoc;->SCOPE_ELEMENTS:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1535
    :cond_d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Javadoc$TagArgument;->scope:Ljava/lang/String;

    :goto_6
    return-void
.end method
