.class public Lorg/apache/tools/ant/taskdefs/Input$HandlerType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Input;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerType"
.end annotation


# static fields
.field private static final HANDLERS:[Lorg/apache/tools/ant/input/InputHandler;

.field private static final VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "greedy"

    const-string v1, "secure"

    const-string v2, "default"

    const-string v3, "propertyfile"

    .line 128
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->VALUES:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/tools/ant/input/InputHandler;

    .line 130
    new-instance v1, Lorg/apache/tools/ant/input/DefaultInputHandler;

    invoke-direct {v1}, Lorg/apache/tools/ant/input/DefaultInputHandler;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/tools/ant/input/PropertyFileInputHandler;

    invoke-direct {v1}, Lorg/apache/tools/ant/input/PropertyFileInputHandler;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/tools/ant/input/GreedyInputHandler;

    invoke-direct {v1}, Lorg/apache/tools/ant/input/GreedyInputHandler;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/tools/ant/input/SecureInputHandler;

    invoke-direct {v1}, Lorg/apache/tools/ant/input/SecureInputHandler;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->HANDLERS:[Lorg/apache/tools/ant/input/InputHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/tools/ant/taskdefs/Input$HandlerType;)Lorg/apache/tools/ant/input/InputHandler;
    .locals 0

    .line 127
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->getInputHandler()Lorg/apache/tools/ant/input/InputHandler;

    move-result-object p0

    return-object p0
.end method

.method private getInputHandler()Lorg/apache/tools/ant/input/InputHandler;
    .locals 2

    .line 142
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->HANDLERS:[Lorg/apache/tools/ant/input/InputHandler;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->getIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 138
    sget-object v0, Lorg/apache/tools/ant/taskdefs/Input$HandlerType;->VALUES:[Ljava/lang/String;

    return-object v0
.end method
