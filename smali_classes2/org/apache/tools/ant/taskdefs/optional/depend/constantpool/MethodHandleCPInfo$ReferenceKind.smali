.class public final enum Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;
.super Ljava/lang/Enum;
.source "MethodHandleCPInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReferenceKind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_getField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_getStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_invokeInterface:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_invokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_invokeStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_invokeVirtual:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_newInvokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_putField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

.field public static final enum REF_putStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;


# direct methods
.method private static synthetic $values()[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;
    .locals 9

    .line 35
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_getField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_getStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_putField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_putStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    sget-object v4, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeVirtual:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    sget-object v5, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    sget-object v6, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    sget-object v7, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_newInvokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    sget-object v8, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeInterface:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    filled-new-array/range {v0 .. v8}, [Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_getField"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_getField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 37
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_getStatic"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_getStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 38
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_putField"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_putField:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 39
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_putStatic"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_putStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 40
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_invokeVirtual"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeVirtual:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 41
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_invokeStatic"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeStatic:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 42
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_invokeSpecial"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 43
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_newInvokeSpecial"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_newInvokeSpecial:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 44
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    const-string v1, "REF_invokeInterface"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->REF_invokeInterface:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    .line 35
    invoke-static {}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->$values()[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    move-result-object v0

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->$VALUES:[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;
    .locals 1

    .line 35
    const-class v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    return-object p0
.end method

.method public static values()[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;
    .locals 1

    .line 35
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->$VALUES:[Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    invoke-virtual {v0}, [Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo$ReferenceKind;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
