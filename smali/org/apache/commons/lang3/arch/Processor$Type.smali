.class public final enum Lorg/apache/commons/lang3/arch/Processor$Type;
.super Ljava/lang/Enum;
.source "Processor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/arch/Processor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/lang3/arch/Processor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum AARCH_64:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

.field public static final enum X86:Lorg/apache/commons/lang3/arch/Processor$Type;


# instance fields
.field private final label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 92
    new-instance v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v1, 0x0

    const-string v2, "AArch64"

    const-string v3, "AARCH_64"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->AARCH_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 97
    new-instance v1, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v2, 0x1

    const-string v3, "x86"

    const-string v4, "X86"

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lorg/apache/commons/lang3/arch/Processor$Type;->X86:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 102
    new-instance v2, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v3, 0x2

    const-string v4, "IA-64"

    const-string v5, "IA_64"

    invoke-direct {v2, v5, v3, v4}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lorg/apache/commons/lang3/arch/Processor$Type;->IA_64:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 107
    new-instance v3, Lorg/apache/commons/lang3/arch/Processor$Type;

    const-string v4, "PPC"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v4}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lorg/apache/commons/lang3/arch/Processor$Type;->PPC:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 112
    new-instance v4, Lorg/apache/commons/lang3/arch/Processor$Type;

    const/4 v5, 0x4

    const-string v6, "Unknown"

    const-string v7, "UNKNOWN"

    invoke-direct {v4, v7, v5, v6}, Lorg/apache/commons/lang3/arch/Processor$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lorg/apache/commons/lang3/arch/Processor$Type;->UNKNOWN:Lorg/apache/commons/lang3/arch/Processor$Type;

    .line 85
    filled-new-array {v0, v1, v2, v3, v4}, [Lorg/apache/commons/lang3/arch/Processor$Type;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput-object p3, p0, Lorg/apache/commons/lang3/arch/Processor$Type;->label:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1

    .line 85
    const-class v0, Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/lang3/arch/Processor$Type;
    .locals 1

    .line 85
    sget-object v0, Lorg/apache/commons/lang3/arch/Processor$Type;->$VALUES:[Lorg/apache/commons/lang3/arch/Processor$Type;

    invoke-virtual {v0}, [Lorg/apache/commons/lang3/arch/Processor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/lang3/arch/Processor$Type;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/commons/lang3/arch/Processor$Type;->label:Ljava/lang/String;

    return-object v0
.end method
