.class Lorg/apache/tools/ant/Project$AntRefTable;
.super Ljava/util/Hashtable;
.source "Project.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/Project;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AntRefTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Hashtable<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2415
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/Project$AntRefTable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2411
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Project$AntRefTable;->getReal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private getReal(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2426
    invoke-super {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2442
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/Project$AntRefTable;->getReal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2443
    instance-of v0, p1, Lorg/apache/tools/ant/UnknownElement;

    if-eqz v0, :cond_0

    .line 2445
    check-cast p1, Lorg/apache/tools/ant/UnknownElement;

    .line 2446
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->maybeConfigure()V

    .line 2447
    invoke-virtual {p1}, Lorg/apache/tools/ant/UnknownElement;->getRealThing()Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method
