.class final Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;
.super Ljava/lang/Object;
.source "EchoProperties.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tuple"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;",
        ">;"
    }
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    .line 388
    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->value:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$1;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)Ljava/lang/String;
    .locals 0

    .line 382
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)Ljava/lang/String;
    .locals 0

    .line 382
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->value:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 382
    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->compareTo(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;)I
    .locals 2

    .line 401
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 412
    :cond_1
    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;

    .line 413
    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->value:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->value:Ljava/lang/String;

    .line 414
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$Tuple;->key:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
