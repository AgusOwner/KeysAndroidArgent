.class public Lorg/apache/tools/ant/taskdefs/Tstamp;
.super Lorg/apache/tools/ant/Task;
.source "Tstamp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;,
        Lorg/apache/tools/ant/taskdefs/Tstamp$Unit;
    }
.end annotation


# static fields
.field private static final ENV_SOURCE_DATE_EPOCH:Ljava/lang/String; = "SOURCE_DATE_EPOCH"


# instance fields
.field private customFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefix:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$tEtGiFiegEPrGx3TrhGy1LJM4ic()Ljava/util/Date;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lorg/apache/tools/ant/Task;-><init>()V

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->customFormats:Ljava/util/List;

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Tstamp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/Tstamp;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$getNow$1(Ljava/lang/String;)Ljava/util/Date;
    .locals 0

    .line 137
    invoke-static {p0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Date;->from(Ljava/time/Instant;)Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getNow$2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "magic property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ignored as \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' is not in valid ISO pattern"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getNow$3(Ljava/lang/String;)Ljava/util/Date;
    .locals 5

    .line 146
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x3e8

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v1

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method static synthetic lambda$getNow$4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "magic property "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " ignored as "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " is not a valid number"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 126
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/apache/tools/ant/Project;->setNewProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createFormat()Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;
    .locals 2

    .line 116
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;

    invoke-direct {v0, p0}, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;-><init>(Lorg/apache/tools/ant/taskdefs/Tstamp;)V

    .line 117
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->customFormats:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "\' for SOURCE_DATE_EPOCH environment variable"

    const-string v1, "Honouring environment variable SOURCE_DATE_EPOCH which has been set to "

    const-string v2, "Ignoring invalid value \'"

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getNow()Ljava/util/Date;

    move-result-object v3

    const-string v4, "SOURCE_DATE_EPOCH"

    .line 81
    invoke-static {v4}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_0

    .line 85
    :try_start_1
    new-instance v5, Ljava/util/Date;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 86
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-object v3, v5

    .line 90
    :catch_1
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->log(Ljava/lang/String;I)V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->customFormats:Ljava/util/List;

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v3}, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/taskdefs/Tstamp;Ljava/util/Date;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 96
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "DSTAMP"

    .line 97
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "TSTAMP"

    .line 100
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMMM d yyyy"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "TODAY"

    .line 104
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 107
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getNow()Ljava/util/Date;
    .locals 3

    .line 135
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "ant.tstamp.now.iso"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getNow(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/util/Optional;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda3;-><init>()V

    new-instance v1, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "ant.tstamp.now"

    invoke-virtual {p0, v2, v0, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getNow(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/util/Optional;

    move-result-object v0

    .line 149
    new-instance v1, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/Tstamp$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method protected getNow(Ljava/lang/String;Ljava/util/function/Function;Ljava/util/function/BiFunction;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Optional<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 161
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 166
    :catch_0
    invoke-interface {p3, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Tstamp;->log(Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$execute$0$org-apache-tools-ant-taskdefs-Tstamp(Ljava/util/Date;Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;)V
    .locals 2

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Tstamp;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lorg/apache/tools/ant/taskdefs/Tstamp$CustomFormat;->execute(Lorg/apache/tools/ant/Project;Ljava/util/Date;Lorg/apache/tools/ant/Location;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    const-string v0, "."

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 67
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Tstamp;->prefix:Ljava/lang/String;

    :cond_0
    return-void
.end method
