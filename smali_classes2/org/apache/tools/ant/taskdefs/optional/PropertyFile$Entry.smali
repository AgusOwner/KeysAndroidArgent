.class public Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;
.super Ljava/lang/Object;
.source "PropertyFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/PropertyFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;,
        Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;
    }
.end annotation


# static fields
.field private static final DEFAULT_DATE_VALUE:Ljava/lang/String; = "now"

.field private static final DEFAULT_INT_VALUE:I = 0x0

.field private static final DEFAULT_STRING_VALUE:Ljava/lang/String; = ""


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private field:I

.field private key:Ljava/lang/String;

.field private newValue:Ljava/lang/String;

.field private operation:I

.field private pattern:Ljava/lang/String;

.field private type:I

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    const/4 v1, 0x2

    .line 282
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    .line 283
    iput v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    .line 284
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    .line 285
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    .line 286
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    const/4 v0, 0x5

    .line 288
    iput v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->field:I

    return-void
.end method

.method private checkParameters()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 525
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "- is not supported for string properties (key:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-nez v2, :cond_3

    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 531
    :cond_2
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "\"value\" and/or \"default\" attribute must be specified (key: %s)"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    .line 535
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    if-eqz v2, :cond_6

    if-ne v0, v1, :cond_5

    .line 538
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_2

    .line 539
    :cond_4
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pattern is not supported for string properties (key: %s)"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_5
    :goto_2
    return-void

    .line 536
    :cond_6
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "key is mandatory"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private executeDate(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 411
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "yyyy/MM/dd HH:mm"

    .line 414
    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    .line 416
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->getCurrentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "now"

    if-nez p1, :cond_1

    move-object p1, v2

    .line 423
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 424
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    goto :goto_0

    .line 427
    :cond_2
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    :catch_0
    :goto_0
    iget p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    .line 436
    :try_start_1
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 437
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    mul-int/lit8 p1, p1, -0x1

    .line 443
    :cond_3
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->field:I

    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 441
    :catch_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value not an integer on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 446
    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    return-void
.end method

.method private executeInteger(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/text/DecimalFormat;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 461
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    :goto_0
    const/4 v1, 0x0

    .line 463
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->getCurrentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 465
    invoke-virtual {v0, p1}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    move p1, v1

    .line 473
    :goto_1
    iget v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move v1, p1

    goto :goto_3

    .line 477
    :cond_2
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 479
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/text/DecimalFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    :cond_3
    move v2, v3

    .line 485
    :goto_2
    iget v4, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    if-nez v4, :cond_4

    add-int v1, p1, v2

    goto :goto_3

    :cond_4
    if-ne v4, v3, :cond_5

    sub-int v1, p1, v2

    :cond_5
    :goto_3
    int-to-long v1, v1

    .line 492
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    return-void
.end method

.method private executeString(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 505
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->getCurrentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    .line 511
    :cond_0
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 516
    :cond_2
    :goto_0
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    return-void
.end method

.method private getCurrentValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 547
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 550
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 556
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    if-nez v0, :cond_2

    .line 562
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    move-object v1, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 569
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    move-object v1, v0

    :cond_3
    if-eqz v0, :cond_6

    .line 576
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    move-object v1, v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    .line 580
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    :cond_5
    move-object v1, p1

    :cond_6
    :goto_1
    return-object v1
.end method


# virtual methods
.method protected executeOn(Ljava/util/Properties;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->checkParameters()V

    .line 372
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 373
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    :try_start_0
    iget v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    if-nez v1, :cond_1

    .line 381
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeInteger(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 383
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeDate(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 385
    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->executeString(Ljava/lang/String;)V

    goto :goto_0

    .line 387
    :cond_3
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Unknown operation type: %d"

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 395
    :goto_0
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    .line 396
    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    .line 400
    :cond_4
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->newValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setDefault(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->key:Ljava/lang/String;

    return-void
.end method

.method public setOperation(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;)V
    .locals 0

    .line 313
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Operation;->toOperation(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->operation:I

    return-void
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->pattern:Ljava/lang/String;

    return-void
.end method

.method public setType(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;)V
    .locals 0

    .line 321
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry$Type;->toType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->type:I

    return-void
.end method

.method public setUnit(Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;)V
    .locals 0

    .line 361
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Unit;->getCalendarField()I

    move-result p1

    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->field:I

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/PropertyFile$Entry;->value:Ljava/lang/String;

    return-void
.end method
