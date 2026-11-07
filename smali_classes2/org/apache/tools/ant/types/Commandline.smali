.class public Lorg/apache/tools/ant/types/Commandline;
.super Ljava/lang/Object;
.source "Commandline.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/types/Commandline$Argument;,
        Lorg/apache/tools/ant/types/Commandline$Marker;
    }
.end annotation


# static fields
.field protected static final DISCLAIMER:Ljava/lang/String;

.field private static final IS_WIN_9X:Z


# instance fields
.field private arguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/types/Commandline$Argument;",
            ">;"
        }
    .end annotation
.end field

.field private executable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "win9x"

    .line 56
    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/condition/Os;->isFamily(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/tools/ant/types/Commandline;->IS_WIN_9X:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "%nThe \' characters around the executable and arguments are%nnot part of the command.%n"

    .line 68
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/types/Commandline;->DISCLAIMER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lorg/apache/tools/ant/types/Commandline;->translateCommandline(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 81
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 82
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/types/Commandline;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    return-object p0
.end method

.method public static describeArguments(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .locals 0

    .line 634
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->getArguments()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/ant/types/Commandline;->describeArguments([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static describeArguments([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 669
    invoke-static {p0, v0}, Lorg/apache/tools/ant/types/Commandline;->describeArguments([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static describeArguments([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_3

    .line 683
    array-length v1, p0

    if-gt v1, p1, :cond_0

    goto :goto_1

    .line 686
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 687
    array-length v3, p0

    if-le v3, p1, :cond_1

    const-string v0, "s"

    :cond_1
    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "argument%s:%n"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    .line 689
    aget-object v0, p0, p1

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "\'%s\'%n"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 691
    :cond_2
    sget-object p0, Lorg/apache/tools/ant/types/Commandline;->DISCLAIMER:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static describeCommand(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;
    .locals 0

    .line 623
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static describeCommand([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    .line 648
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 651
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Executing \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 652
    array-length v1, p0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const-string v1, " with "

    .line 653
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    invoke-static {p0, v2}, Lorg/apache/tools/ant/types/Commandline;->describeArguments([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 656
    :cond_1
    sget-object p0, Lorg/apache/tools/ant/types/Commandline;->DISCLAIMER:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static quoteArgument(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "\""

    .line 438
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\'"

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 440
    :cond_0
    new-instance p0, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Can\'t handle single and double quotes in same argument"

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 445
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lorg/apache/tools/ant/types/Commandline;->IS_WIN_9X:Z

    if-eqz v1, :cond_2

    const-string v1, ";"

    .line 447
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    return-object p0

    .line 448
    :cond_3
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_3

    .line 462
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 466
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 467
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0x20

    .line 469
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 471
    :cond_1
    invoke-static {v3}, Lorg/apache/tools/ant/types/Commandline;->quoteArgument(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 473
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public static translateCommandline(Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 493
    :cond_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "\"\' "

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 494
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v0

    move v6, v5

    .line 498
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    const/4 v8, 0x2

    if-eqz v7, :cond_a

    .line 499
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\'"

    if-eq v6, v3, :cond_8

    const-string v10, "\""

    if-eq v6, v8, :cond_6

    .line 518
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move v6, v3

    goto :goto_1

    .line 520
    :cond_1
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v8

    goto :goto_1

    :cond_2
    const-string v8, " "

    .line 522
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v5, :cond_3

    .line 523
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 524
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 528
    :cond_4
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    move v5, v0

    goto :goto_0

    .line 510
    :cond_6
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_2

    .line 514
    :cond_7
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 502
    :cond_8
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    :goto_2
    move v6, v0

    move v5, v3

    goto :goto_0

    .line 506
    :cond_9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_a
    if-nez v5, :cond_b

    .line 534
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_c

    .line 535
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    if-eq v6, v3, :cond_d

    if-eq v6, v8, :cond_d

    new-array p0, v0, [Ljava/lang/String;

    .line 540
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 538
    :cond_d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unbalanced quotes in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_3
    new-array p0, v0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addArguments([Ljava/lang/String;)V
    .locals 4

    .line 363
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 364
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/types/Commandline$Argument;->setValue(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addArgumentsToList(Ljava/util/ListIterator;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/tools/ant/types/Commandline$Argument;

    .line 408
    invoke-virtual {v1}, Lorg/apache/tools/ant/types/Commandline$Argument;->getParts()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 411
    invoke-interface {p1, v4}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addCommandToList(Ljava/util/ListIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 385
    invoke-interface {p1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 387
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/types/Commandline;->addArgumentsToList(Ljava/util/ListIterator;)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearArgs()V
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 559
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/tools/ant/types/Commandline;

    .line 560
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 563
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createArgument()Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/types/Commandline;->createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;

    move-result-object v0

    return-object v0
.end method

.method public createArgument(Z)Lorg/apache/tools/ant/types/Commandline$Argument;
    .locals 2

    .line 314
    new-instance v0, Lorg/apache/tools/ant/types/Commandline$Argument;

    invoke-direct {v0}, Lorg/apache/tools/ant/types/Commandline$Argument;-><init>()V

    if-eqz p1, :cond_0

    .line 316
    iget-object p1, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public createMarker()Lorg/apache/tools/ant/types/Commandline$Marker;
    .locals 2

    .line 592
    new-instance v0, Lorg/apache/tools/ant/types/Commandline$Marker;

    iget-object v1, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/tools/ant/types/Commandline$Marker;-><init>(Lorg/apache/tools/ant/types/Commandline;I)V

    return-object v0
.end method

.method public describeArguments()Ljava/lang/String;
    .locals 1

    .line 612
    invoke-static {p0}, Lorg/apache/tools/ant/types/Commandline;->describeArguments(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeCommand()Ljava/lang/String;
    .locals 1

    .line 602
    invoke-static {p0}, Lorg/apache/tools/ant/types/Commandline;->describeCommand(Lorg/apache/tools/ant/types/Commandline;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArguments()[Ljava/lang/String;
    .locals 2

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 397
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Commandline;->addArgumentsToList(Ljava/util/ListIterator;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 398
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCommandline()[Ljava/lang/String;
    .locals 2

    .line 373
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 374
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/types/Commandline;->addCommandToList(Ljava/util/ListIterator;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 375
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getExecutable()Ljava/lang/String;
    .locals 1

    .line 355
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/tools/ant/types/Commandline$Argument;",
            ">;"
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lorg/apache/tools/ant/types/Commandline;->arguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public setExecutable(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 329
    invoke-virtual {p0, p1, v0}, Lorg/apache/tools/ant/types/Commandline;->setExecutable(Ljava/lang/String;Z)V

    return-void
.end method

.method public setExecutable(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_2

    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const/16 p2, 0x2f

    .line 346
    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5c

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 347
    :cond_1
    iput-object p1, p0, Lorg/apache/tools/ant/types/Commandline;->executable:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 549
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lorg/apache/tools/ant/types/Commandline;->getCommandline()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/types/Commandline;->toString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
